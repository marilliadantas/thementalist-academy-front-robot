*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Cadastrar diretoria com sucesso
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Diretorias
    Wait Until Element Is Visible    locator=${NEW_CADASTRO}       timeout=10
    Click Button    locator=${NEW_CADASTRO}

    ${diretoria}    FakerLibrary.Random Uppercase Letter

    Input Text      locator=${NAME_DIRETORIA}    text=CEO&& ${diretoria}
    Click Button    locator=${BUTTON_CADASTRAR}