*** Settings ***
Library    SeleniumLibrary
Library    ../utils/env_loader.py
Resource   ../pages/teste_login_procedural.resource 

*** Keywords ***
Dado que eu esteja no site da Toro Investimentos
    Acessar a home do site da Toro Investimentos
    Wait Until Element Is Visible    locator=${BTN_FAZER_LOGIN}

Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Clicar na opção Fazer login
    ${Window}                        Get Window Handles
    Switch Window                    ${Window}[1]

Então devo ver a mensagem "${FRASE}" na página de login
    Wait Until Page Contains         text=${FRASE}

Quando eu inserir um e-mail ou CPF válido no campo
    Digitar e-mail válido no campo de E-mail ou CPF
    
E inserir a senha correta para o e-mail ou CPF
    Digitar senha do e-mail inserido no campo de Senha

E clicar no botão "Entrar"
    Clicar no botão Entrar

Então devo ser redirecionado para a página /home
    Verifica se a url contem /home
    
E a página deve conter "${TXT_BOAS_VINDAS}"
    Verificar se a página contem "${TXT_BOAS_VINDAS}"
