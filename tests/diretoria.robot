*** Settings ***
Resource    ../resources/util/util.resource
Test Teardown   Fechar o navegador

*** Test Cases ***

Cenário 01: Cadastrar Diretoria 
    [Tags]    cadastro_diretoria
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Cadastrar diretoria com sucesso
    # Fechar o navegador
