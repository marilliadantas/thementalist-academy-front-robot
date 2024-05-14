*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Acessar página do projeto
    Go To   ${URL}
    Wait Until Element Is Visible    locator=${LOGIN}
    Wait Until Page Contains         text=${TEXT_LOGIN}

Fazer login com o usuário administrador
    Preencher        ${TEXT_MAIL}                ${MAIL}
    Preencher        ${TEXT_PASSWORD}            ${PASSWORD}
    Clicar           ${BUTTON_ENTRAR}

Fazer login com e-mail em branco
    Input Text      ${TEXT_MAIL}                text=
    Input Text      ${TEXT_PASSWORD}            text=${PASSWORD}
    Click Button    locator=${BUTTON_ENTRAR}

Fazer login com senha em branco
    Input Text      locator=${TEXT_MAIL}        text=${MAIL}
    Input Text      locator=${TEXT_PASSWORD}    text=
    Click Button    locator=${BUTTON_ENTRAR}

Fazer login com email e senha em branco
    Input Text      locator=${TEXT_MAIL}        text=
    Input Text      locator=${TEXT_PASSWORD}    text=
    Click Button    locator=${BUTTON_ENTRAR}

Fazer login com email inexistente
    Preencher       ${TEXT_MAIL}                emailinexistente@qacoders.com
    Preencher       ${TEXT_PASSWORD}            ${PASSWORD}
    Clicar          ${BUTTON_ENTRAR}

Fazer login com senha inválida
    Preencher       ${TEXT_MAIL}               ${MAIL}
    Preencher       ${TEXT_PASSWORD}           1234Test
    Clicar          ${BUTTON_ENTRAR}

Fazer login com email em formato inválida
    Preencher     ${TEXT_MAIL}                emailinvalidoqacoders.com
    Preencher     ${TEXT_PASSWORD}            ${PASSWORD}
    Clicar        ${BUTTON_ENTRAR}

Validar mensagem de erro "${erroEsperado}"
    ${text}        getText           ${ERROR_REQUIRED}
    Should Be Equal As Strings       ${erroEsperado}       ${text}

Validar as mensagens de erro
    [Arguments]        ${alerta1}    ${alerta2}
    ${text}        getTextIndex      ${ERROR_REQUIRED}     0
    Should Be Equal As Strings       ${alerta1}            ${text}
    ${text}        getTextIndex      ${ERROR_REQUIRED}     1
    Should Be Equal As Strings       ${alerta2}            ${text}

Validar a mensagem de alerta "${alertaEsperado}"
    Validar mensagem    ${ALERT_ERROR}    ${alertaEsperado}
