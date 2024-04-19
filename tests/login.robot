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

Cenario 04 - Login com todos os campos em branco
    Acessar página do projeto
    Fazer login com email e senha em branco
    Validar as mensagens de erro  O email é obrigatório  A senha é obrigatória

Cenario 05 - Login com email inexistente e senha valida
  Acessar página do projeto
  Fazer login com email inexistente
  Validar a mensagem de alerta "E-mail ou senha informados são inválidos"

Cenario 06 - Login com email valido e senha invalida 
  Acessar página do projeto
  Fazer login com senha inválida
  Validar a mensagem de alerta "E-mail ou senha informados são inválidos"

Cenario 07 - Login com email em formato invalido
    Acessar página do projeto
    Fazer login com email em formato inválida
    Validar mensagem de erro "Digite um email válido"