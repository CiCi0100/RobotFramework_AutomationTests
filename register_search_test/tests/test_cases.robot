*** Settings ***
Suite Setup        Abrir Browser
Suite Teardown     Fechar Browser
Resource    ../resources/keywords/custom_keywords.robot

*** Test Cases ***
Login with Valid Credentials
    [Documentation]    Testa o login com credenciais válidas
    Acess Home Page
    Input email for create an account
    Create an account
    Check the page title
    Search for Product
    Verify Search Results