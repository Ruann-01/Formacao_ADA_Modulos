-- Utilizei como base o database ruann_campos_teste, mas de qualquer forma, segue abaixo os códigos para criação do database, para realmente não ficar faltando nada:

-- Criação de Database
-- CREATE DATABASE ruann_campos_curso;
-- Conceder permissões
-- GRANT ALL PRIVILEGES ON ruann_campos_biblioteca.* TO 'ruann_campos'@'%';
-- Refresh nas permissões 
-- FLUSH PRIVILEGES;

-- use ruann_campos_curso;
use ruann_campos_teste;

-- QUESTÃO 6
-- CRIANDO TABELAS REQUERIDAS
CREATE TABLE aluno(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR (200),
    aluno_alocado BOOLEAN,
    id_turma INT
);

CREATE TABLE turma(
	id_turma INT PRIMARY KEY AUTO_INCREMENT,
    codigo_turma VARCHAR (50),
    nome_turma VARCHAR (200)
);
-- Adicionando FOREIGN KEY id_turma na tabela aluno
ALTER TABLE aluno ADD FOREIGN KEY(id_turma) REFERENCES turma (id_turma);
