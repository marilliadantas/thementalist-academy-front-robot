*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Listar diretoria com sucesso
    Wait Until Element Is Visible    ${BTN_CADASTRO}          10s
    Click Element    Cadastros
    Click Element    Diretorias

Validar campos do listar diretoria
    Wait Until Element Is Visible    ${TEXT_NAME_DIRETORIA}    10s
    Wait Until Element Is Visible    ${TEXT_ID_DIRETORIA}      10s

Validar quantos registros estão cadastrados por página da Lista de Diretoria
    Wait Until Page Contains Element    ${PAGE2}                20s
    Element Should Be Visible           ${PAGE2}
    ${ul_number}    Get Text            ${PAGE2}
    Should Contain                      ${ul_number}            20s