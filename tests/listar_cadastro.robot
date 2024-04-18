*** Settings ***
Resource    ../resources/util/util.resource

*** Test Cases ***
Cenário 01: Listar Usuários 
    [Tags]    listar_usuario
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar campos do listar usuarios
    # Fechar o navegador