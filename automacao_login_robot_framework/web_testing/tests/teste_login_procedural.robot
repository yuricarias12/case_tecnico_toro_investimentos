*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_procedural.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Esse teste verifica o botão "Fazer login"
    ...                E também verifica se o login é efetuado com sucesso passando credenciais válidas.
    [Tags]             Funçionalidade_Login
    Acessar a home do site da Toro Investimentos
    Clicar na opção Fazer login
    Verifica se aparece a frase "Acesse sua conta Toro."
    Digitar e-mail válido no campo de E-mail ou CPF
    Digitar senha do e-mail inserido no campo de Senha
    Clicar no botão Entrar
    Verificar se a página contem "Olá, Yuri"