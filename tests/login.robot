*** Settings ***
Resource    ../resources/util/util.resource

Test Setup       Abrir o navegador

*** Test Cases ***
Cenário 01 - Acessar página do projeto do Qa.Coders
    [Documentation]    Esse teste acessa a página web do projeto
    [Tags]             acesso
    Acessar página do projeto
    Fazer login com o usuário administrador

Cenário 02 - Login com email em branco
    Acessar página do projeto
    Fazer login com e-mail em branco
    Validar mensagem de erro "O email é obrigatório"

Cenário 03 - Login com senha em branco
    Acessar página do projeto
    Fazer login com senha em branco
    Validar mensagem de erro "A senha é obrigatória"

CT06 - Login com todos os campos em branco
    Acessar página do projeto
    Fazer login com email e senha em branco
    Validar as mensagens de erro  O email é obrigatório  A senha é obrigatória