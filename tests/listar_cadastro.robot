*** Settings ***
Resource    ../resources/util/util.resource

*** Test Cases ***
Cenario 01: Listar Usuarios 
    [Tags]    listar_usuario
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar campos do listar usuarios
    # Fechar o navegador