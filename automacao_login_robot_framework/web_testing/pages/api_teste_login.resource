*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections
Library    JSONLibrary
Library    ../utils/env_loader.py
Resource   ../pages/teste_login_procedural.resource
  
*** Keywords ***
Abrir o navegador
    Abrir navegador

Acessar a página inicial da Toro Investimentos
    Acessar a home do site da Toro Investimentos

Clicar no botão Fazer login
    Clicar na opção Fazer login

Digitar o email
    Digitar e-mail válido no campo de E-mail ou CPF

Digitar a senha
    Digitar senha do e-mail inserido no campo de Senha

Clicar no botão para entrar
    Clicar no botão Entrar

Criar Sessão na ServeRest
    ${token}          Get Env    TOKEN
    ${headers}        Create Dictionary    Authorization=Bearer ${token}    accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest    url=https://webapieqr.toroinvestimentos.com.br    headers=${headers}

Obter informações do usuário
   ${resposta_consulta}    GET On Session    alias=ServeRest    url=/userprofile    expected_status=200
   Set Test Variable       ${RESP_CONSULTA}    ${resposta_consulta.json()}
   
Conferir os dados retornados
    Log    Dados retornados pela API: ${RESP_CONSULTA}
    ${dados_usuario}    Load Json From File    file_name=${CURDIR}${/}../resources${/}dados_usuario.json
    Dictionary Should Contain Item    ${RESP_CONSULTA['value']}    name        ${dados_usuario['name']}
    Dictionary Should Contain Item    ${RESP_CONSULTA['value']}    cpfcnpj     ${dados_usuario['cpfcnpj']}
    Dictionary Should Contain Item    ${RESP_CONSULTA['value']}    email       ${dados_usuario['email']}
    

    