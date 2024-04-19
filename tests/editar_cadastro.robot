*** Settings ***
Resource    ../resources/util/util.resource
Resource    ../resources/editar_cadastro.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
# Cenário 01: Editar cadastro com sucesso 
#     [Tags]    listar_diretoria  
#     Acessar página do projeto
#     Fazer login com o usuário administrador
#     Editar cadastro com sucesso
#     # Fechar o navegador

Cenario 02: Cancelar a alteracao do cadastro
     Acessar página do projeto
     Fazer login com o usuário administrador
     Cancelar a alteração do cadastro com sucesso