*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_gherkin_bdd.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Esse teste verifica o botão "Fazer login"
    ...                E também verifica se o login é efetuado com sucesso passando credenciais válidas.
    [Tags]             Funçionalidade_Login
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Então a frase "Acesse sua conta Toro" deve ser exibida
    Quando eu inserir um e-mail ou CPF válido no campo
    E inserir a senha correta para o e-mail ou CPF
    E clicar no botão "Entrar"
    #Então devo ser redirecionado para a página /home
    Então a página deve conter "Olá, Yuri"