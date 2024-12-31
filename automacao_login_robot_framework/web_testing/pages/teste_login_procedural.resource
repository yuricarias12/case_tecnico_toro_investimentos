*** Settings ***
Library    SeleniumLibrary
Library    ../utils/env_loader.py

*** Variables ***
${BROWSER}                           chrome
${URL_Toro_Investimentos}            https://www.toroinvestimentos.com.br/
${BTN_FAZER_LOGIN}                   //span[@class='login-text'][contains(.,'Fazer login')]
${INPUT_EMAIL_CPF}                   username
${INPUT_SENHA}                       password
${BTN_ENTRAR}                        //button[@class='btn btn--md btn--full btn-primary--solid'][contains(.,'Entrar')]
*** Keywords ***
Abrir navegador
    Open Browser                    browser=${BROWSER}
    Maximize Browser Window    

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acessar a home do site da Toro Investimentos
    Go To                            ${URL_Toro_Investimentos}
    Wait Until Element Is Visible    locator=${BTN_FAZER_LOGIN}    timeout=10

Clicar na opção Fazer login
    Click Element                    locator=${BTN_FAZER_LOGIN}
    ${Window}                        Get Window Handles
    Switch Window                    ${Window}[1]

Verifica se aparece a frase "${FRASE}"
    Wait Until Page Contains         text=${FRASE}    timeout=10

Digitar e-mail válido no campo de E-mail ou CPF
    ${email}                         Get Env    EMAIL
    Wait Until Element Is Visible    locator=${INPUT_EMAIL_CPF}    timeout=10
    Input Text                       locator=${INPUT_EMAIL_CPF}    text=${email}
    
Digitar senha do e-mail inserido no campo de Senha
    ${senha}                         Get Env    SENHA
    Wait Until Element Is Visible    locator=${INPUT_SENHA}        timeout=10
    Input Text                       locator=${INPUT_SENHA}        text=${senha}

Clicar no botão Entrar
    Click Button    locator=${BTN_ENTRAR}

Verifica se a url contem /home
    Wait Until Location Contains    /home    timeout=10

Verificar se a página contem "${NOME_USUARIO}"
    Wait Until Page Contains    text=${NOME_USUARIO}    timeout=10