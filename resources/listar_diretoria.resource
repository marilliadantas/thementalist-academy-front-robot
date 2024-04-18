*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Listar diretoria com sucesso
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Diretorias
    #Location Should Be    ${URL_DIRETORIA}

Validar campos do listar diretoria
    Wait Until Element Is Visible    locator=${TEXT_NAME_DIRETORIA}    timeout=10
    Wait Until Element Is Visible    locator=${TEXT_ID_DIRETORIA}      timeout=10