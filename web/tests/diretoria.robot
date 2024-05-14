*** Settings ***
Resource    ../resources/util/util.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario 01: Cadastrar Diretoria 
    [Tags]    cadastro_diretoria
    Acessar página do projeto
    Fazer login com o usuário administrador
    Cadastrar diretoria com sucesso