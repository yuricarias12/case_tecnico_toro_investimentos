*** Settings ***
Resource    ../pages/api_teste_login.resource

*** Variables ***


*** Test Cases ***
Cenário 01: Realizar login com sucesso na Toro Investimentos
    Abrir o navegador
    Acessar a página inicial da Toro Investimentos
    Clicar no botão Fazer login
    Digitar o email
    Digitar a senha
    Clicar no botão para entrar
    Criar Sessão na ServeRest
    Obter informações do usuário
    Conferir os dados retornados
    