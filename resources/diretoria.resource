*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Cadastrar diretoria com sucesso
    Wait Until Element Is Visible    locator=${BUTTON_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Diretorias
    Click Button    locator=${NEW_CADASTRO}
    Input Text    locator=${NAME_DIRETORIA}    text=CEO
    Click Button    locator=${BUTTON_CADASTRAR}