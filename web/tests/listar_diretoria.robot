*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 01: Listar Diretoria 
    [Tags]    listar_diretoria 
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar campos do listar diretoria

Cernário 02: Validar Quantidade de Registros
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar quantidade de registros
    
Cenário 03: Validar ordem alfabetica
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar a ordem alfabetica

Cenário 04: Listar diretoria específica
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar a diretoria na lista   Operações