*** Settings ***
Resource    ../resources/util/util.resource
Resource    ../resources/editar_diretoria.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 01: Editar diretoria com sucesso 
    Acessar página do projeto
    Fazer login com o usuário administrador
    Gerar dados de diretoria
    Editar diretoria                     ${DIRETORIA_CRIADA}
    Validar a diretoria com o nome       ${DIRETORIA_CRIADA}

Cenário 02: Cancelar a alteracao do cadastro
    Acessar página do projeto
    Fazer login com o usuário administrador
    Cancelar a alteração da editoria     Teste
    Validar a diretoria com o nome       ${DIRETORIA_CRIADA}

Cenário 03: Editar diretoria com nome vazio
    Acessar página do projeto
    Fazer login com o usuário administrador
    Deixar campo diretoria vazio         ${DIRETORIA_CRIADA}
    Validar a mensagem de campo obrigatorio "O campo diretoria é obrigatório"

Cenário 04: Editar diretoria com caracter não permitido
    Acessar página do projeto
    Fazer login com o usuário administrador
    Editar diretoria    Diretoria#
    Validar a mensagem de erro "O campo 'diretoria' só pode conter letras e o caractere especial '&'."

Cenário 05: Editar diretoria com um caracter
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de diretorias
    Quando o usuário informar o dado     D
    Validar a mensagem de campo obrigatorio "O campo diretoria deve conter no minímo 2 caracteres"