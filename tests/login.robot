*** Settings ***
Resource    ../resources/util/util.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cenário 01 - Login com sucesso
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

Cenário 04 - Login com email inválido e senha válida
  Acessar página do projeto
  Fazer login com email inválido
  Validar a mensagem de alerta "E-mail e/ou senha inválidos"

Cenário 05 - Login com email válido e senha inválida 
  Acessar página do projeto
  Fazer login com senha inválida
  Validar a mensagem de alerta "E-mail e/ou senha inválidos"

Cenário 06 - Login com todos os campos em branco
    Acessar página do projeto
    Fazer login com email e senha em branco
    Validar as mensagens de erro  O email é obrigatório  A senha é obrigatória