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
