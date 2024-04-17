*** Settings ***
Resource    ../resources/util/util.resource

Test Setup       Abrir o navegador

*** Test Cases ***
Cenário 01 - Acessar página do projeto do Qa.Coders
    [Documentation]    Esse teste acessa a página web do projeto
    [Tags]             acesso
    Acessar página do projeto
    Fazer login com o usuário administrador

