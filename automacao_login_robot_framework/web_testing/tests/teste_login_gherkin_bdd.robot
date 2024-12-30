*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_gherkin_bdd.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Este caso de teste verifica o login com credenciais válidas. 
    ...                Ele valida o redirecionamento para a página /home e, 
    ...                confirma a exibição da saudação personalizada "Olá, Yuri".  
    ...                O caso de teste foi estruturado em formato Gherkin (BDD), 
    ...                descrevendo o cenário com passos claros: Dado, Quando, e Então.
    [Tags]             Funçionalidade_Login
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Então devo ver a mensagem "Acesse sua conta Toro" na página de login
    Quando eu inserir um e-mail ou CPF válido no campo
    E inserir a senha correta para o e-mail ou CPF
    E clicar no botão "Entrar"
    Então devo ser redirecionado para a página /home
    E a página deve conter "Olá, Yuri"