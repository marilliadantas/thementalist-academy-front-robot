*** Settings ***
Resource    ../resources/pages/cadastrarDiretoria_page.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Cadastrar diretoria com sucesso
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em novo cadastro
    E inserir nome da diretoria válido
    E clicar em Salvar novo
    # Então o sistema deve exibir uma mensagem de sucesso "Cadastro realizado com sucesso."
    E exibir a diretoria cadastrada

CT02 - Cadastrar diretoria com campo diretoria vazio
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em novo cadastro
    E não inserir diretoria
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo diretoria é obrigatório"

CT03 - Cadastrar diretoria com números
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em novo cadastro
    E inserir diretoria "131242"
    E clicar em Salvar novo
    Então o sistema deve exibir uma mensagem de erro "O campo 'diretoria' só pode conter letras e o caractere especial '&'."

CT04 - Cadastrar diretoria com caracter especial "@"
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em novo cadastro
    E inserir diretoria com caracter especial @
    E clicar em Salvar novo
    Então o sistema deve exibir uma mensagem de erro "O campo 'diretoria' só pode conter letras e o caractere especial '&'."

CT05 - Cadastrar diretoria já cadastrada
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em novo cadastro
    E inserir diretoria "Diretoria&"
    E clicar em Salvar novo
    Então o sistema deve exibir uma mensagem de erro "Não é possível salvar esse registro. Diretoria já cadastrada no sistema."