*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 01: Cadastrar Diretoria 
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Gerar dados de diretoria
    Quando o usuário informar o dado     ${DIRETORIA_CRIADA}
    E exibir a diretoria cadastrada

Cenário 02: Cadastrar diretoria com campo diretoria vazio
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     None
    Validar a mensagem de retorno "O campo diretoria é obrigatório"

Cenário 03: Cadastrar diretoria com números
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     2312323
    Validar o alerta de retorno "O campo 'diretoria' só pode conter letras e o caractere especial '&'."

Cenário 04: Cadastrar diretoria com caracter especial @
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     Diretoria@
    Validar o alerta de retorno "O campo 'diretoria' só pode conter letras e o caractere especial '&'."

Cenário 05: Cadastrar diretoria já cadastrada
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     Diretoria&
    Validar o alerta de retorno "Não é possível salvar esse registro. Diretoria já cadastrada no sistema."

Cenário 06: Cadastrar diretoria com um caractere
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     D
    Validar a mensagem de retorno "O campo diretoria deve conter no minímo 2 caracteres"