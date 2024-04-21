*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario 01: Cadastrar Diretoria 
    [Tags]    cadastro_diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de Diretoria
    Cadastrar diretoria com sucesso

Cenario 02: Cadastrar diretoria em branco
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de Diretoria
    Cadastrar diretoria em branco
    Validar o retorno da mensagem "O campo diretoria é obrigatório"

Cenario 03: Cadastrar diretoria duplicada
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de Diretoria
    Cadastrar diretoria duplicada
    Validar o retorno do alert "Não é possível salvar esse registro. Diretoria já cadastrada no sistema."

Cenario 04: Validar o valor limite no Cadastro de Diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de Diretoria
    Validar o limite no Cadastro de Diretoria
    Validar o retorno da mensagem de Limite Maximo "O campo diretoria pode ter no máximo 50 caracteres"

Cenario 04: Validar o valor minimo no Cadastro de Diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de Diretoria
    Validar o limite no Cadastro de Diretoria
    Validar o retorno da mensagem de Limite Minimo "O campo diretoria deve conter no minímo 2 caracteres"
