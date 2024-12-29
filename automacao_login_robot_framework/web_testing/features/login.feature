# language: pt
Funcionalidade: Login
    Como um usuário da plataforma toro investimentos
    Eu quero iniciar sessão com crecendiais válidas
    Para que eu possa ter acesso a todos aos produtos da Toro Investimentos

Cenário: Login bem sucedido
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Quando eu inserir um e-mail ou CPF válido no campo
    E inserir a senha correta para o e-mail ou CPF
    E clicar no botão "Entrar"
    Então devo ser redirecionado para a página /home

Cenário: Login com senha inválida
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Quando eu inserir um e-mail ou cpf válido no campo
    E inserir uma senha inválida
    E clicar no botão "Entrar"
    Então o sistema deve exibir uma mensagem informando "Dados incorretos. Digite novamente."

Cenário: Login com e-mail ou CPF inválido
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Quando eu inserir um e-mail ou cpf inválido no campo
    E inserir a senha correta
    E clicar no botão "Entrar"
    Então o sistema deve exibir uma mensagem informando "Dados incorretos. Digite novamente."

Cenário: Bloqueio de senha após várias tentativas falhas
    Dado que eu esteja no site da Toro Investimentos
    Quando eu clicar em "Fazer login" e for redirecionado para a página de login
    Quando eu inserir um e-mail ou CPF válido no campo
    E inserir uma senha incorreta
    E clicar no botão "Entrar" 5 vezes seguidas
    Então o sistema deve bloquear a senha e exibir uma mensagem de erro "Sua senha foi bloqueada. Crie uma nova para continuar.", "Foram feitas muitas tentativas de login. Por segurança, sua senha atual foi bloqueada."




