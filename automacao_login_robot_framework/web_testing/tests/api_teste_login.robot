*** Settings ***
Resource    ../pages/api_teste_login.resource

*** Variables ***


*** Test Cases ***
Cenário 01: Realizar login com sucesso na Toro Investimentos
    [Documentation]    Testa o login com credenciais válidas, 
    ...                verificando se o redirecionamento para a página /home ocorre corretamente,
    ...                além de validar os dados retornados pela API de usuário
    [Tags]             Login_API
    Abrir o navegador
    Acessar a página inicial da Toro Investimentos
    Clicar no botão Fazer login
    Digitar o email
    Digitar a senha
    Clicar no botão para entrar
    Verificar se o endpoint /home está presente na url
    Criar Sessão na ServeRest
    Obter informações do usuário
    Conferir os dados retornados
    