# Robot Framework Login and Search Automation Tests

## Descrição

Este repositório contém testes automatizados criados usando o [Robot Framework](https://robotframework.org/). O foco do projeto é testar funcionalidades de login e busca em uma aplicação web. Utilizamos a biblioteca [SeleniumLibrary](http://robotframework.org/SeleniumLibrary/) para interagir com o navegador e a [FakerLibrary](https://github.com/guykisel/robotframework-faker) para gerar massa de dados, como emails e dados cadastrais.

O objetivo é garantir que o sistema possa lidar com uma variedade de cenários de login e que a funcionalidade de busca esteja operando corretamente.

## Funcionalidades

- **Teste de Login:**
  - Verificação de login bem-sucedido com credenciais válidas.

- **Teste de Busca:**
  - Busca por produtos com palavras-chave válidas.
  
- **Geração Automática de Dados:**
  - Criação de emails e dados cadastrais aleatórios usando FakerLibrary para testes repetidos.

## Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](http://robotframework.org/SeleniumLibrary/)
- [FakerLibrary](https://github.com/guykisel/robotframework-faker)
- [Python](https://www.python.org/) 3.6+

## Pré-requisitos

Certifique-se de ter o Python instalado na sua máquina. Você pode verificar a versão do Python usando o comando:

```bash
python --version

Instale o pip, o gerenciador de pacotes do Python, se ainda não o tiver instalado. Para instalar as dependências do projeto, execute:
 pip install -r requirements.txt

 

## Instalação
 Clone o repositório para a sua máquina local:

```bash
git clone https://github.com/CiCi0100/RobotFramework_AutomationTests.git

Navegue até o diretório do projeto:
 cd register_search_test

Instale as dependências:
 pip install -r requirements.txt

Execute os testes:
 robot -d results tests/

### Estrutura do Projeto
RegisterandSearchAutomationTests/
|-- register_search_test/
| |-- resources/
| | |-- keywords/
| | | -- custom_keywords.robot | | -- variables/
| | -- variables.robot | |-- results/ | |-- tests/ | -- test_cases.robot
|-- README.md


### Explicação da Estrutura

- **register_search_test/**: Diretório principal do projeto.
  - **resources/**: Contém arquivos de recursos que auxiliam nos testes.
    - **keywords/**: Diretório para armazenar os arquivos de palavras-chave personalizadas usadas nos testes.
      - **custom_keywords.robot**: Arquivo com palavras-chave customizadas para o framework Robot.
    - **variables/**: Contém arquivos de variáveis usadas nos testes.
      - **variables.robot**: Definição de variáveis para uso nos testes.
  - **results/**: Diretório onde os resultados dos testes serão armazenados.
  - **tests/**: Contém os casos de teste.
    - **test_cases.robot**: Arquivo principal com os casos de teste automatizados.
- **README.md**: Arquivo de documentação do projeto.

## Contato

Para mais informações, entre em contato com Ciara pelo email: Ciarade0206@gmail.com

