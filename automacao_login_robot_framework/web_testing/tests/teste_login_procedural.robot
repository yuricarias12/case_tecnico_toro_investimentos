*** Settings ***
Documentation    Esse suíte de testa a funcionalidade de Login da Toroinventimentos.com.br
Resource         ../pages/teste_login_procedural.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador


*** Test Cases ***
Caso de Teste 01 - Login bem sucedido
    [Documentation]    Este caso de teste verifica o login com credenciais válidas. 
    ...                Ele valida o redirecionamento para a página /home e, 
    ...                confirma a exibição da saudação personalizada "Olá, Yuri". 
    ...                Garantindo que a experiência do usuário ao logar-se no sistema ocorra sem erros.  
    ...                O caso de teste foi estruturado em formato procedural, listando cada etapa em sequência.
    [Tags]             Login_Procedural
    Acessar a home do site da Toro Investimentos
    Clicar na opção Fazer login
    Verifica se aparece a frase "Acesse sua conta Toro."
    Digitar e-mail válido no campo de E-mail ou CPF
    Digitar senha do e-mail inserido no campo de Senha
    Clicar no botão Entrar
    Verifica se a url contem /home
    Verificar se a página contem "Olá, Yuri"