-- Utilizei como base o database ruann_campos_teste, mas de qualquer forma, segue abaixo os códigos para criação do database, para realmente não ficar faltando nada:

-- Criação de Database
-- CREATE DATABASE ruann_campos_ecommerce;
-- Conceder permissões
-- GRANT ALL PRIVILEGES ON ruann_campos_biblioteca.* TO 'ruann_campos'@'%';
-- Refresh nas permissões 
-- FLUSH PRIVILEGES;

-- use ruann_campos_ecommerce;
use ruann_campos_teste;

-- CRIAÇÃO DAS TABELAS E SUAS FOREIGN KEYS ====
CREATE TABLE categorias (
id_categoria INT PRIMARY KEY AUTO_INCREMENT,
nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
preco_produto FLOAT NOT NULL
);

CREATE TABLE produtos_categorias (
id_produto INT,
id_categoria INT
);
ALTER TABLE produtos_categorias ADD FOREIGN KEY(id_produto) REFERENCES produtos (id_produto);
ALTER TABLE produtos_categorias ADD FOREIGN KEY(id_categoria) REFERENCES categorias (id_categoria);
-- ======

-- INSERÇÃO DE VALORES NAS TABELAS ====
INSERT INTO
  categorias
  (nome_categoria)
VALUES
  ('Material Escolar'),
  ('Jóias'),
  ('Utensílios de Viagem'),
  ('Móveis');
  
select * 
from categorias;

INSERT INTO
  produtos
  (nome_produto, preco_produto)
VALUES
  ('Resma Ofício c/500 folhas', 17.50),
  ('Resma Ofício c/1000 folhas', 23.00),
  ('Amuleto', 110.00),
  ('Anel', 105.00),
  ('Mala', 120.25),
  ('Mochila', 70);

select * 
from produtos;

INSERT INTO
	produtos_categorias
	(id_produto,id_categoria)
VALUES
  (1,1),
  (2,1),
  (3,2),
  (4,2),
  (5,3),
  (6,3);
  
  select * 
  from produtos_categorias;
  -- =======
  
  -- RESOLVENDO AS QUESTÕES
  
-- 3) Liste os nomes de todos os produtos que custam mais de 100 reais, ordenando-os primeiramente pelo preço e em segundo lugar pelo nome. //
-- Use alias para mostrar o nome da coluna nome como "Produto" e da coluna preco como "Valor". A resposta da consulta não deve mostrar outras colunas de dados.
select nome_produto as Produto,
	preco_produto as Valor_Acima_100
from produtos
where preco_produto > 100.00
order by 2 DESC, 1 ASC;

-- 4) Liste todos os ids e preços de produtos cujo preço seja maior do que a média de todos os preços encontrados na tabela "produtos".
select id_produto as Id_Produto,
	preco_produto as Valores_Acima_da_Média
from produtos
where preco_produto > (select round(avg(preco_produto),2) from produtos);

-- 5)Para cada categoria, mostre o preço médio do conjunto de produtos a ela associados. Caso uma categoria não tenha nenhum produto a ela associada, //
-- esta categoria não deve aparecer no resultado final. A consulta deve estar ordenada pelos nomes das categorias.
select c.nome_categoria as Categoria,
	round(avg(p.preco_produto),2) as Valor_Médio_Produto
from categorias c
	join produtos_categorias pc on pc.id_categoria = c.id_categoria
	join produtos p on p.id_produto = pc.id_produto
group by 1
order by 1 asc;