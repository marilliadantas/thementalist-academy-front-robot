*** Settings ***
Resource    ../resources/util/util.resource

Test Setup       Abrir o navegador

*** Test Cases ***
Cenario 01 - Acessar pagina do projeto do Qa.Coders
    [Documentation]    Esse teste acessa a página web do projeto
    [Tags]             acesso
    Acessar página do projeto
    Fazer login com o usuário administrador

Cenario 02 - Login com email em branco
    Acessar página do projeto
    Fazer login com e-mail em branco
    Validar mensagem de erro "O email é obrigatório"

Cenario 03 - Login com senha em branco
    Acessar página do projeto
    Fazer login com senha em branco
    Validar mensagem de erro "A senha é obrigatória"

Cenario 04 - Login com email inválido e senha válida
  Acessar página do projeto
  Fazer login com email inválido
  Validar mensagem de alerta "E"

Cenario 05 - Login com email válido e senha inválida 
  Acessar página do projeto
  Fazer login com senha inválida
  Validar mensagem de alerta "E"

Cenario 06 - Login com todos os campos em branco
    Acessar página do projeto
    Fazer login com email e senha em branco
    Validar as mensagens de erro  O email é obrigatório  A senha é obrigatória

