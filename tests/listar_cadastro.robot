*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario 01: Listar Usuarios 
     [Tags]    listar_usuario   
     Acessar página do projeto
     Fazer login com o usuário administrador
     Listar usuarios com sucesso

Cenario 02: Validar campos do Listar Usuários
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar campos do listar usuarios

Cenario 03: Validar campos do Listar Usuários
# Esse teste deve falhar pois na regra de negócio é 50 registros por página
    Acessar página do projeto
    Fazer login com o usuário administrador
    Listar usuarios com sucesso
    Validar quantos registros estão cadastrados por página