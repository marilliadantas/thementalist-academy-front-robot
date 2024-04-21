*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Listar diretoria com sucesso
    Wait Until Element Is Visible    ${BTN_CADASTRO}          10s
    Click Element    Cadastros
    Click Element    Diretorias

Validar campos do listar diretoria
    Should Contain    ${TEXT_NAME_DIRETORIA}    Nome da Diretoria        
    Should Contain    ${TEXT_ID_DIRETORIA}      Codigo da Diretoria 

Validar quantos registros estão cadastrados por página da Lista de Diretoria
    Wait Until Page Contains Element    ${PAGE}                20s
    Element Should Be Visible           ${PAGE}
    ${ul_number}    Get Text            ${PAGE}
    Should Contain                      ${ul_number}            20