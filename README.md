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

# [Detecção de fraude em transações de cartões de crédito utilizando modelos classificatórios de Machine Learning](https://github.com/grmirand4/sc2023-deteccao-fraude-machine-learning)

**Projeto - Machine Learning I**

Instrutor: [Carlos Stefano](https://www.linkedin.com/in/carlos-stefano/)

**Equipe: [Gabriel Miranda](https://www.linkedin.com/in/grmiranda/), [Marcus Thadeu](https://www.linkedin.com/in/marcus-thadeu/), [Ruann Campos](https://www.linkedin.com/in/ruann-campos/) e [Thiago Caveglion](https://www.linkedin.com/in/thiago-caveglion/)**

## 🎯 Objetivo geral
Prever transações fraudulentas em cartões de crédito através da construção de modelos classificatórios de machine learning (KNN, Decision Tree, Random Forest e Gradient Boosting)

## 📝 Objetivos específicos
No desenvolvimento de nossa análise, buscamos responder às seguintes perguntas:
* É possível prever quais das transações realizadas entre 06/2020 e 12/2020 contidas em `fraudTest.csv` são fraudulentas?
* Quais dos modelos classificatórios construídos apresentaram melhor performance?

## 📊 Sobre o data set
Os data sets `fraudTrain.csv` e `fraudTest.csv` utilizados em nossa análise apresentam informações fictícias retiradas [dessa base de dados do Kaggle](https://www.kaggle.com/datasets/kartik2112/fraud-detection). É um data set simulado de transações de cartões de crédito ocorridas entre as datas de 01/01/2019 a 31/12/2020; refere-se aos cartões de 1000 clientes diferentes realizando transações a 800 comerciantes distintos. As colunas dos arquivos incluem:
* `trans_date_trans_time`: data e hora da transação
* `cc_num`: número do cartão de crédito
* `merchant`: nome do comerciante
* `category`: categoria de compra
* `amt`: valor da transação
* `first`: primeiro nome da pessoa
* `last`: último nome da pessoa
* `gender`: gênero da pessoa que realizou a transação
* `dob`: data de nascimento da pessoa que realizou a transação
* `job`: profissão da pessoa que realizou a transação
* `street`, `state`, `zip`: endereço da pessoa que realizou a transação
* `city`: cidade da pessoa que realizou a transação
* `city_pop`: população da cidade da pessoa que realizou a transação
* `lat`: latitude da pessoa que realizou a transação
* `long`: longitude da pessoa que realizou a transação
* `merch_lat`: latitude do comerciante
* `merch_long`: longitude do comerciante
* `trans_num`, `unix_time`: dados da transação
* `is_fraud`: 1 para transações fraudulentas, 0 caso contrário

## 💡 Principais conclusões
* De forma geral, fomos capazes de utilizar os diferentes modelos de classificação propostos (KNN, Decision Tree, Random Forest e Gradient Boosting) para a predição de fraudes dados os data sets trabalhados.
  
**Sobre o desempenho de cada modelo:**

* É possível que o **KNN** não seja o melhor modelo para este problema (ou que os modelos trabalhados precisem de mais ajustes).
  * O **recall baixo** (`recall = 0.3` e `recall = 0.25`) representa uma preocupação. Em contextos como detecção de fraudes, devemos priorizar um recall mais alto, mesmo que isso signifique sacrificar um pouco a precisão. Falsos negativos (fraudes não detectadas) podem ter consequências mais graves do que falsos positivos.
  * A **baixa precisão** dos modelos sugere que ainda há espaço para melhorar a capacidade de se evitar falsos positivos.
    
* **Decision Tree:** foi possível criar um modelo com cerca de 92% de precisão e 72% de recall, totalizando um `f1-score` de cerca de 0.81 com uma curva ROC de 0.96 de área.

* **Random Forest:** com a otimização dos hiperparâmetros, o modelo atingiu uma acurácia de 0.99.
	* Sobre a classificação: baixa precisão para a classe 1, onde apenas 30% dos dados classificados como fraude realmente a são.
	* Recall com bom desempenho, onde o modelo é capaz de identificar 85% dos verdadeiros positivos.
	* F1-Score: média entre precision e recall de 0.45.

* O modelo **Gradient Boosting Otimizado** apresenta uma maior quantidade de acertos na classe de verdadeiros positivos (`recall = 0.84`).
	* No entanto, pode ser útil investigar maneiras de melhorar a precisão (`precision = 0.45`) sem sacrificar muito o recall, para reduzir o número de transações legítimas classificadas erroneamente como fraudulentas.

 * Concluímos que, dentro dos modelos trabalhados aqui, o **Decision Tree apresentou o melhor desempenho para o nosso conjunto de dados**.

**Pontos a serem melhorados:**

* Para classificação dos dados: utilizar técnicas para lidar com a falta de balanceamento dos data sets (resampling, por exemplo).
* Utilizar as mesmas features para os diferentes modelos de forma a gerar comparações mais fidedignas.
* Adicionar outras métricas de comparação, como a própria curva ROC.

## 💻 Principais linguagens
- Python
  - Pandas
  - Numpy
  - Seaborn
  - Plotly
  - Matplotlib
  - Scipy
  - Sklearn
  - Imblearn
  - Lightgbm
  - Joblib

## 👨‍💻 Execução
Para executar os notebooks localmente, certifique-se de:

* Fazer o download dos arquivos `fraudTrain.csv` e `fraudTest.csv` [neste link do Kaggle](https://www.kaggle.com/datasets/kartik2112/fraud-detection) (eles são muito grandes para serem colocados neste repositório).
* Alterar o caminho nas linhas de código que lêem os data sets: `df_train = pd.read_csv("caminho/fraudTrain.csv")` e `df_test = pd.read_csv("caminho/fraudTest.csv")`.

Neste repositório, você encontra 4 notebooks diferentes, cada um focado em um dos modelos (KNN, Decision Tree, Random Forest e Gradient Boosting).

###### Tags: `python` `data-science` `random-forest` `credit-card` `knn` `decision-tree` `fraud-detection` `gradient-boosting`
