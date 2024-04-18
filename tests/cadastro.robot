*** Settings ***
Resource    ../resources/util/util.resource

*** Test Cases ***

Cenario 01: Cadastrar usuario 
    [Tags]             cadastro_usuario
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Cadastrar usuário com sucesso
    # Fechar o navegador
