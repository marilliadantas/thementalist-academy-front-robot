*** Settings ***
Resource    ../resources/util/util.resource
Library    String

*** Keywords ***
Listar usuarios com sucesso
    Sleep   2s
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}
    Click Element    Cadastros
    Click Element    Usuários
    Sleep   2s

Validar campos do listar usuarios
    Wait Until Element Is Visible    locator=${TEXT_NAME_CADASTRO}    timeout=10
    Wait Until Element Is Visible    locator=${TEXT_EMAIL}            timeout=10

Validar lista contendo 50 usuários
    [Arguments]        ${qtdEsperada}   
    ${text}            Get Text        ${QTD_USUARIOS} 
    ${lista}=          Split String    ${text}            ${SPACE}
    ${quantidade}      Set Variable    ${LISTA}[0]

    Should Be Equal As Strings         ${quantidade}      ${qtdEsperada}

Validar o usuário específico na lista
    [Arguments]    ${nomeEsperado}
    ${text}        getTextIndex       ${LISTA}            14
    Should Be Equal As Strings        ${nomeEsperado}     ${text}