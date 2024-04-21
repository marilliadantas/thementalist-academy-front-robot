*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Listar usuarios com sucesso
    Wait Until Element Is Visible     ${BTN_CADASTRO}          10s
    Click Element    Cadastros
    Click Element    Usuários

Validar campos do listar usuarios
    Wait Until Element Is Visible      ${TEXT_NAME_CADASTRO}   10s
    Wait Until Element Is Visible      ${TEXT_EMAIL}           10s

Validar quantos registros estão cadastrados por página
    Wait Until Page Contains Element    ${PAGE2}                20s
    Element Should Be Visible           ${PAGE2}
    ${ul_number}    Get Text            ${PAGE2}
    Should Contain                      ${ul_number}            50
    Sleep    20s
  