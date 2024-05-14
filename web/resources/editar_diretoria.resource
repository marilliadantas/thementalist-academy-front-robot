*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Editar diretoria com sucesso
    Sleep    2s 
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    ${BTN_CADASTRO}
    Wait Until Element Is Visible    locator=${BTN_DIRETORIAS} 
    Click Element    ${BTN_DIRETORIAS}
    clicarIndex      ${DIRETORIA}         3

    [Arguments]        ${editoriaNome}
    Limpar campo       ${NAME_DIRETORIA}
    Run Keyword If    '${editoriaNome}' != 'None'  Input Text    ${NAME_DIRETORIA}    ${editoriaNome}

    Clicar     ${BUTTON_SALVAR_ALTERACOES} 

Deixar campo diretoria vazio 
    [Arguments]    ${editoriaNome}
    Sleep    2s 
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    ${BTN_CADASTRO}
    Wait Until Element Is Visible    locator=${BTN_DIRETORIAS} 
    Click Element    ${BTN_DIRETORIAS}
    clicarIndex      ${DIRETORIA}         3

    ${length}    Evaluate    len("${editoriaNome}")
    FOR    ${index}    IN RANGE    ${length}
        Press Keys    ${NAME_DIRETORIA}    BACKSPACE
    END

    Clicar     ${BUTTON_SALVAR_ALTERACOES} 

Validar a diretoria com o nome
    [Arguments]    ${tituloEsperado}
    ${text}        getTextIndex       ${LISTA}             6
    Should Be Equal As Strings        ${tituloEsperado}    ${text}

Cancelar a alteração da editoria 
    Sleep    2s 
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    ${BTN_CADASTRO}
    Wait Until Element Is Visible    locator=${BTN_DIRETORIAS} 
    Click Element    ${BTN_DIRETORIAS}
    clicarIndex      ${DIRETORIA}         3

    [Arguments]        ${editoriaNome}
    Limpar campo       ${NAME_DIRETORIA}
    Run Keyword If    '${editoriaNome}' != 'None'  Input Text    ${NAME_DIRETORIA}    ${editoriaNome}

    Clicar             ${BUTTON_CANCELAR} 

Validar a mensagem de campo obrigatorio "${msg}"
    waitElement    ${ALERTA}      10s
    ${text}        getText        ${ALERTA}
    Should Be Equal As Strings    ${msg}        ${text}

Validar a mensagem de erro "${msgError}"
    waitElement    ${ALERT_MSG}       5s
    ${text}        getText        ${ALERT_MSG}
    Should Be Equal As Strings    ${msgError}        ${text}