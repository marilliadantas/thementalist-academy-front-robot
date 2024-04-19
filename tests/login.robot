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

Cenario 04 - Login com email inválido e senha válida
  Acessar página do projeto
  Fazer login com email inexistente
  Validar a mensagem de alerta "E-mail ou senha informados são inválidos"

Cenario 05 - Login com email válido e senha inválida 
  Acessar página do projeto
  Fazer login com senha inválida
  Validar a mensagem de alerta "E-mail ou senha informados são inválidos"

Cenario 06 - Login com todos os campos em branco
    Acessar página do projeto
    Fazer login com email em formato inválida
    Validar mensagem de erro "Digite um email válido"
    