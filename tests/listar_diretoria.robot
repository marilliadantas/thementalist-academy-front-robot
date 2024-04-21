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

Cenario 02: Validar campos do Listar Diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Validar campos do listar diretoria

Cenario 03: Validar campos do Listar Diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Validar quantos registros estão cadastrados por página da Lista de Diretoria