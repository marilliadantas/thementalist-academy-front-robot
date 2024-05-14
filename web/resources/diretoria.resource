*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Acessar tela de diretorias
    Sleep    3s
    waitElement                                ${BTN_CADASTRO}       10s
    Click Element                              ${BTN_CADASTRO} 

    waitElement                                ${BTN_DIRETORIAS}     10s
    Click Element                              ${BTN_DIRETORIAS}      

    waitElement                                ${NEW_CADASTRO}       10s      
    Clicar                                     ${NEW_CADASTRO}        

Quando o usuário informar o dado
    [Arguments]        ${nomeDiretoria}
    Run Keyword If    '${nomeDiretoria}' != 'None'
    ...    Preencher   ${NAME_DIRETORIA}    ${nomeDiretoria}
    
    Clicar             ${BUTTON_SALVAR_ALTERACOES} 

E exibir a diretoria cadastrada
    Clicar                        ${ULTIMA_PAGINA}
    Wait Until Page Contains      ${DIRETORIA_CRIADA}

Validar a mensagem de retorno "${msgEsperada}"
    ${text}        getText        ${MSG_REQUIRED} 
    Should Be Equal As Strings    ${msgEsperada}        ${text}
    Validar mensagem              ${MSG_REQUIRED}       ${msgEsperada}

Validar o alerta de retorno "${alertaEsperado}"
    waitElement    ${MSG_ALERT}       5s
    ${text}        getText        ${MSG_ALERT}
    Should Be Equal As Strings    ${alertaEsperado}     ${text}