*** Settings ***
Resource    ../resources/util/util.resource

*** Test Cases ***

Cenário 01: Listar Diretoria 
    [Tags]    listar_diretoria
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar diretoria com sucesso
    Validar campos do listar diretoria
    # Fechar o navegador