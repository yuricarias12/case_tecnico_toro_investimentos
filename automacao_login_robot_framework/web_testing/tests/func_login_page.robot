*** Settings ***
Resource    ../pages/func_login_page.resource
Resource    ../pages/teste_login_procedural.resource

*** Test Cases ***
Login De Usuario
    [Documentation]    Este caso de teste demonstra a utilização de uma função dedicada para realizar login.  
    ...                Ele demonstra como simplificar o processo de login.  
    Login Function
