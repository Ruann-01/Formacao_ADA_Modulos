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
