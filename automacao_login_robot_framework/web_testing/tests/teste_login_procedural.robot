*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_procedural.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Testa o login com credenciais válidas, 
    ...                verificando se o redirecionamento para /home ocorre corretamente.
    [Tags]             Funçionalidade_Login
    Acessar a home do site da Toro Investimentos
    Clicar na opção Fazer login
    Verifica se aparece a frase "Acesse sua conta Toro."
    Digitar e-mail válido no campo de E-mail ou CPF
    Digitar senha do e-mail inserido no campo de Senha
    Clicar no botão Entrar
    Verificar se a página contem "Olá, Yuri"