*** Settings ***
Library    SeleniumLibrary
Library    ../utils/env_loader.py
Resource    teste_login_procedural.resource

*** Keywords ***
Carregar Credenciais
    ${EMAIL}    Get Env   EMAIL
    ${SENHA}    Get Env   SENHA
    Set Suite Variable    ${EMAIL}
    Set Suite Variable    ${SENHA}

Login Function
    Abrir navegador
    Carregar Credenciais
    Acessar a home do site da Toro Investimentos
    Clicar na opção Fazer login
    Digitar e-mail válido no campo de E-mail ou CPF        ${EMAIL}
    Digitar senha do e-mail inserido no campo de Senha     ${SENHA}
    Clicar no botão Entrar
    Verifica se a url contem /home
    Verificar se a página contem "Olá, Yuri"

Digitar e-mail válido no campo de E-mail ou CPF
    [Arguments]    ${email}
    Wait Until Element Is Visible    locator=${INPUT_EMAIL_CPF}
    Input Text                       locator=${INPUT_EMAIL_CPF}    text=${email}

Digitar senha do e-mail inserido no campo de Senha
    [Arguments]    ${senha}
    Wait Until Element Is Visible    locator=${INPUT_SENHA}
    Input Text                       locator=${INPUT_SENHA}        text=${senha}
