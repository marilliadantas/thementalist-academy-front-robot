*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
# Cenario 01: Listar Usuarios 
#     [Tags]    listar_usuario   
#     Acessar página do projeto
#     Fazer login com o usuário administrador
#     Listar usuarios com sucesso
#     Validar campos do listar usuarios