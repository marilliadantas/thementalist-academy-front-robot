*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 01: Listar Usuarios 
    [Tags]    listar_usuario   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar campos do listar usuarios

Cenário 02: Listar quantidade de usuários por página
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar lista contendo 50 usuários  1-50

Cenário 03: Listar usuário específico
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar o usuário específico na lista   Adriano Lima