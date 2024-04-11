*** Settings ***
Resource     ../resources/main.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Login como administrador
    Dado que o usuário acessa a página de login QaCoders Academy
    Quando inserir email  ${EMAIL}
    E inserir senha  ${SENHA}
    E clicar em entrar
    Então o sistema exibe a tela home do sistema

# CT02 - Login com email inválido
#     Dado que o usuário acessa a página de login QaCoders Academy
#     Quando inserir email  ${EMAIL_INVALIDO}
#     E inserir senha  ${SENHA}
#     E clicar em entrar
#     Então o sistema exibe a mensagem de erro "E-mail e/ou senha inválidos"

# CT03 - Login com senha inválida
#     Dado que o usuário acessa a página de login QaCoders Academy
#     Quando inserir email  ${EMAIL}
#     E inserir senha  ${SENHA_INVALIDA}
#     E clicar em entrar
#     Então o sistema exibe a mensagem de erro "E-mail e/ou senha inválidos"

CT04 - Login com email em branco
    Dado que o usuário acessa a página de login QaCoders Academy
    Quando não preencher email
    E inserir senha  ${SENHA}
    E clicar em entrar
    Então o sistema exibe a mensagem de campo obrigatório "O email é obrigatório"

CT05 - Login com senha em branco
    Dado que o usuário acessa a página de login QaCoders Academy
    Quando inserir email  ${EMAIL}
    E não preencher senha
    E clicar em entrar
    Então o sistema exibe a mensagem de campo obrigatório "A senha é obrigatória"

CT06 - Login com todos os campos em branco
    Dado que o usuário acessa a página de login QaCoders Academy
    Quando não preencher email
    E não preencher senha
    E clicar em entrar
    Então o sistema exibe as mensagens  O email é obrigatório  A senha é obrigatória