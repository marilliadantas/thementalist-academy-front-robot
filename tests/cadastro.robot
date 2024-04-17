*** Settings ***
Resource    ../resources/util/util.resource

*** Test Cases ***

Cenário 01: Cadastrar usuário 
    [Tags]             cadastro_usuario
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Cadastrar usuário com sucesso
    # Fechar o navegador
