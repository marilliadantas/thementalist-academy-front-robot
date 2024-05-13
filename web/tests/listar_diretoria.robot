*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario 01: Listar Diretoria 
    [Tags]    listar_diretoria 
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar campos do listar diretoria

Cenario 02: Validar Quantidade de Registros
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar quantidade de registros
    
Cenario 03: Validar ordem alfabetica
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar a ordem alfabetica