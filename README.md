# Formacao_ADA_Modulos
Este repositório contém os projetos desenvolvidos no decorrer da Formação ADA de Data Science

# Projeto_Lógica_de_Programação_II
Nesse projeto iremos focar no conhecimento adquirido durante o módulo de lógica de programação II.

Utilizaremos as estruturas de dados (tuplas, listas, dicionários) além da lógica de programação (if/else, while, e for), lembre-se das compreensões de listas e dicionários. E utilize as técnicas e algoritmos que achar necessário para realizar o projeto. A ideia é que no projeto sejam utilizados o maior número possível de recursos que foram aprendidos durante o módulo.

### Critérios de avaliação

Os seguintes itens serão avaliados:

1. Reprodutibilidade do código: seu código será executado e precisa gerar os mesmos resultados apresentados por você;

2. Clareza: seu código precisa ser claro e deve existir uma linha de raciocínio direta. Comente o código em pontos que julgar necessário para o entendimento total;

3. Utilização dos recursos aprendidos durante o módulo.


### Informações gerais

- O projeto pode ser desenvolvido individualmente ou em grupo

- Entrega (em definição).

Anexar, na entrega, o código (notebook ou script python) desenvolvido e os arquivos gerados.

### Tarefas: Iniciando Construção do Projeto

#### 1. Criar uma estrutura de dados que armazene as vendas realizadas em uma loja.

#### 2. Implemente uma função que solicite ao usuário a ação desejada (Incluir ou Excluir) um item da lista. 

    Informações sobre a venda que devem constar:

    - ID (incremental)
    - Nomes dos produtos
    - Quantidade de Produtos
    - Valores dos produtos
    - Nome do vendedores
    - CPF dos compradores
    - Datas das vendas
    - Informações opcionais

# Projeto_Técnicas_Programação_II

**Execução**

-Para rodar o arquivo localmente, certifique-se que as variáveis "descompactar" (notebook dos preços) ou a variável "rodando_localmente" (notebook dos tributos) estão marcadas como True

-Certifique-se também de instalar as bibliotecas: pandas, numpy, matplotlib, seaborn, geopandas, plotly, xlrd e mpl_toolkits no seu ENV 

-Realizamos esse trabalho em conjunto partindo de um projeto da iniciativa Santander Coders 2023, lecionados pela ADA Tech na disciplina Técnicas de Programação I

**Projeto - Técnicas de Programação I**

-Instrutor: Alex Lima

-Auxiliar: Maurício Sobrinho

**Equipe: Gabriel Miranda, Marcus Thadeu, Ruann Campos e Thiago Caveglion**

O projeto tem como objetivos:
* Analisar de forma exploratória a série histórica de preços de combustíveis no Brasil no período de 2018.1 a 2023.1;
* Analisar de forma exploratória a série histórica de arrecadações tributárias estaduais no mesmo período;
* Relacionar ambos datasets.

**Informações importantes sobre os dois notebooks do projeto:**

- Análise_Exploratória_Combustíveis.ipynb: notebook onde construímos a análise exploratória sobre os combustíveis.
  - Pasta datasets_combustível_comprimido: onde está armazenado os datasets comprimidos dos combustíveis. Dados disponíveis em: https://www.gov.br/anp/pt-br/centrais-de-conteudo/dados-abertos/serie-historica-de-precos-de-combustiveis.
  - Pasta IBGE_Aux: onde está armazenado o dataset auxiliar com os dados de geolocalização utilizado para a construção dos mapas na análise.
-  Análise_Exploratória_Tributação.ipynb: notebook onde construímos a análise exploratória sobre as tributações dos estados.
    - Dataset_Tributos.xls: dataset utilizado para aquisão de dados referentes às tributações (dados disponíveis em: https://dados.gov.br/dados/conjuntos-dados/boletim-de-arrecadacao-dos-tributos-estaduais)

# Projeto Banco de Dados I
### Modelagem e normalização de bancos de dados relacionais
Certo dia, um dos gestores do banco em que você trabalha como cientista de dados procurou você pedindo ajuda para projetar um pequeno banco de dados com o objetivo de mapear os clientes da companhia pelos diferentes produtos financeiros que eles contrataram.

O gestor explicou que o banco tinha uma grande quantidade de clientes e oferecia uma variedade de produtos financeiros, como cartões de crédito, empréstimos, seguros e investimentos. No entanto, eles estavam tendo dificuldades para entender quais produtos eram mais populares entre os clientes e como esses produtos estavam interagindo entre si.

Como ponto de partida, o gestor deixou claro que um cliente pode contratar vários produtos diferentes ao passo que um mesmo produto pode também estar associado a vários clientes diferentes e elaborou um rústico esboço de banco de dados com duas tabelas, da seguinte forma:

Tabela 1

    - Nome da tabela: cliente
    - Colunas: codigo_cliente, nome_cliente, sobrenome_cliente, telefones_cliente, municipio_cliente, codigo_tipo_cliente, tipo_cliente
Tabela 2

    - Nome da tabela: produto
    - Colunas: codigo_produto, nome_produto, descricao_produto, codigo_tipo_produto, tipo_produto, codigo_diretor_responsavel, nome_diretor_responsavel, email_diretor_responsavel

##### 1) Ainda sem fazer normalizações, apresente o modelo conceitual deste esboço oferecido pelo gestor, destacando atributos chaves e multivalorados, caso existam, e apresentando também a cardinalidade dos relacionamentos.

##### 2) Agora apresente um modelo lógico que expresse as mesmas informações e relacionamentos descritos no modelo original, mas decompondo-os quando necessário para que sejam respeitadas as 3 primeiras formas normais. Destaque atributos chaves e multivalorados, caso existam, e apresente também a cardinalidade dos relacionamentos.

#### Consultas SQL simples e complexas em um banco de dados postgres
Um exemplo de modelo de banco de dados com relacionamento muitos-para-muitos pode ser o de um e-commerce que tem produtos e categorias, onde um produto pode pertencer a várias categorias e uma categoria pode estar associada a vários produtos. Nesse caso, teríamos duas tabelas: "produtos" e "categorias", com uma tabela intermediária "produtos_categorias" para relacionar os produtos às suas categorias.

    CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    );

    CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
    );

    CREATE TABLE produtos_categorias (
    produto_id INTEGER REFERENCES produtos(id),
    categoria_id INTEGER REFERENCES categorias(id),
    PRIMARY KEY (produto_id, categoria_id)
    );
Assim, usando o subconjunto da "structured query language" chamado de DQL, produza consultas postgress de modo a atender cada uma das seguintes solicitações:

##### 3) Liste os nomes de todos os produtos que custam mais de 100 reais, ordenando-os primeiramente pelo preço e em segundo lugar pelo nome. Use alias para mostrar o nome da coluna nome como "Produto" e da coluna preco como "Valor". A resposta da consulta não deve mostrar outras colunas de dados.

##### 4) Liste todos os ids e preços de produtos cujo preço seja maior do que a média de todos os preços encontrados na tabela "produtos".

##### 5) Para cada categoria, mostre o preço médio do conjunto de produtos a ela associados. Caso uma categoria não tenha nenhum produto a ela associada, esta categoria não deve aparecer no resultado final. A consulta deve estar ordenada pelos nomes das categorias.

#### Inserções, alterações e remoções de objetos e dados em um banco de dados postgres
Você está participando de um processo seletivo para trabalhar como cientista de dados na Ada, uma das maiores formadoras do país em áreas correlatadas à tecnologia. Dividido em algumas etapas, o processo tem o objetivo de avaliar você nos quesitos Python, Machine Learning e Bancos de Dados. Ainda que os dois primeiros sejam o cerne da sua atuação no dia-a-dia, considera-se que Bancos de Dados também constituem um requisito importante e, por isso, esta etapa pode ser a oportunidade que você precisava para se destacar dentre os seus concorrentes, demonstrando um conhecimento mais amplo do que os demais.

##### 6) Com o objetivo de demonstrar o seu conhecimento através de um exemplo contextualizado com o dia-a-dia da escola, utilize os comandos do subgrupo de funções DDL para construir o banco de dados simples abaixo, que representa um relacionamento do tipo 1,n entre as entidades "aluno" e "turma":

Tabela 1

    - Nome da tabela: aluno
    - Colunas da tabela: id_aluno (INT), nome_aluno (VARCHAR), aluno_alocado (BOOLEAN), id_turma (INT)
Tabela 2

    - Nome da tabela: turma
    - Colunas da tabela: id_turma (INT), código_turma (VARCHAR), nome_turma (VARCHAR)
##### 7) Agora que você demonstrou que consegue ser mais do que um simples usuário do banco de dados, mostre separadamente cada um dos códigos DML necessários para cumprir cada uma das etapas a seguir:
    a) Inserir pelo menos duas turmas diferentes na tabela de turma;
    b) Inserir pelo menos 1 aluno alocado em cada uma destas turmas na tabela aluno (todos com NULL na coluna aluno_alocado);
    c) Inserir pelo menos 2 alunos não alocados em nenhuma turma na tabela aluno (todos com NULL na coluna aluno_alocado);
    d) Atualizar a coluna aluno_alocado da tabela aluno, de modo que os alunos associados a uma disciplina recebam o valor True e alunos não associdos a nenhuma disciplina recebam o falor False para esta coluna.

# Projeto_Estatística
# Análise Exploratória Estatística dos Correios
Análise do tráfego dos correios no ano de 2023, ponderando sobre métricas escolhidas e levantando pontos relevantes.
## Equipe
A equipe que realizou este projeto é composta por: Gabriel Miranda, Marcus Thadeu, Ruann Campos e Thiago Caveglion
## Orientador
O orientador deste projeto foi Felipe Yoshimoto, professor na Ada Tech no programa Santander Coders 2023 na disciplina de Estatística I
## Estrutura
Os arquivos estão organizados em um jupyter notebook e um arquivo .parquet com os dados
## Método
Realizamos análises estatísticas para fazer uma análise exploratória baseada num dataset mascarado de tráfego dos correios no ano de 2023
## Bibliotecas
As bibliotecas utilizadas foram indicadas no arquivo ipynb
##
