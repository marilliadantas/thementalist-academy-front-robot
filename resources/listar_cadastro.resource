*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Listar usuarios com sucesso
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Usuários
    #Location Should Be    ${URL_CADASTRO} 

Validar campos do listar usuarios
    Wait Until Element Is Visible    locator=${TEXT_NAME_CADASTRO}    timeout=10
    Wait Until Element Is Visible    locator=${TEXT_EMAIL}            timeout=10