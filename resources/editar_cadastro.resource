*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
# Editar cadastro com sucesso
#     Wait Until Element Is Visible    locator=${BUTTON_CADASTRO}    timeout=10
#     Click Element    Cadastros
#     Click Element    Usuários
#     Wait Until Element Is Visible    locator=${NEW_CADASTRO}
#     Wait Until Element Is Visible    locator=${BUTTON_EDITAR}    timeout=20
#     Click Button    locator=${BUTTON_EDITAR}
#     Input Text      locator=${FULLNAME}         text=123
#     Click Button    locator=${BUTTON_SALVAR_ALTERACOES}

Cancelar a alteração do cadastro com sucesso
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Usuários
    Wait Until Element Is Visible    locator=${NEW_CADASTRO}
    Wait Until Element Is Visible    locator=${BUTTON_EDITAR}    timeout=20
    Click Button    locator=${BUTTON_EDITAR}
    Input Text      locator=${FULLNAME}         text=123
    Click Button    locator=${BUTTON_CANCELAR}