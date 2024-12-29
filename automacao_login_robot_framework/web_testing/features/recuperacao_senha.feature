# language: pt

Funcionalidade: Recuperação de Senha
    Como um usuário da plataforma Toro Investimentos
    Eu quero recuperar a minha senha
    Para que eu possa ter acesso novamente a todos aos produtos da Toro Investimentos

Cenário: Botão permanece desabilitado ao corrigir e-mails divergentes
    Dado que estou na página de recuperação de senha
    Quando insiro um e-mail inválido "email-invalido" no primeiro campo
    E insiro um e-mail válido "email-valido@exemplo.com" no segundo campo
    E corrijo o e-mail no primeiro campo para "email-valido@exemplo.com"
    Então o botão "Continuar" deveria ser habilitado
    Mas ele permanece desabilitado, impedindo a continuidade do processo

Cenário: Recuperação de senha por e-mail
    Dado que eu esteja na página de login
    Quando eu clicar em "Esqueceu sua senha?"
    Então devo ser redirecionado para a página /esqueci-minha-senha

    Dado que eu esteja na página /esqueci-minha-senha
    Quando eu inserir um e-mail válido no campo "Digite o e-mail cadastrado"
    E eu inserir novamente o mesmo e-mail anterior no campo "Confirme o e-mail cadastrado"
    Então o sistema deve enviar o código de alteração de senha para o e-mail inserido

# Cenário: Recuperação de senha por e-mail
#     Dado que eu esteja na página de login
#     Quando eu clicar em "Esqueceu sua senha?"
#     Então devo ser redirecionado para a página /esqueci-minha=senha

# Cenário: Recuperação de senha por e-mail
#     Dado que eu esteja na página /esqueci-minha-senha
#     Quando eu inserir um e-mail no campo "Digite o e-mail cadastrado"
#     E eu inserir novamente o mesmo e-mail no campo "Confirme o e-mail cadastrado"
#     Então o sistema deve enviar o código de alteração de senha para o e-mail inserido

Cenário: Recuperação de senha com e-mail diferente
    Dado que eu esteja na página /esqueci-minha-senha
    Quando eu inserir um e-mail no campo "Digite o e-mail cadastrado"
    E inserir e-mail diferente do anterior no campo "Confirme o e-mail cadastrado"
    Então o sistema deve desabilitar o botão "Continuar" e exibir uma mensagem "Os e-mails não coincidem."





