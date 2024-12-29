*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_gherkin_bdd.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Testa o login com credenciais válidas, 
    ...                verificando se o redirecionamento para /home ocorre corretamente.
    [Tags]             Funçionalidade_Login
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Então a frase "Acesse sua conta Toro" deve ser exibida
    Quando eu inserir um e-mail ou CPF válido no campo
    E inserir a senha correta para o e-mail ou CPF
    E clicar no botão "Entrar"
    Então devo ser redirecionado para a página /home
    E a página deve conter "Olá, Yuri"