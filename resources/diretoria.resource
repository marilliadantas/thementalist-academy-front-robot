*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***

Acessar tela de Diretoria 
    Wait Until Element Is Visible    ${BTN_CADASTRO}       10s
    Click Element                    Cadastros
    Click Element                    Diretorias
    Wait Until Element Is Visible    ${NEW_CADASTRO}       10s
    Wait Until Page Contains                   Novo Cadastro

Cadastrar diretoria com sucesso    
    Clicar                          ${NEW_CADASTRO}
    ${diretoria}                    FakerLibrary.Word   
    Preencher                       ${NAME_DIRETORIA}      ${diretoria}
    Clicar                          ${BUTTON_CADASTRAR}

Cadastrar diretoria em branco 
    Clicar                          ${NEW_CADASTRO}
    Limpar campo                    ${NAME_DIRETORIA}
    Clicar                          ${BUTTON_CADASTRAR}
    Sleep    10s
Validar o retorno da mensagem "${msgEsperada}"
    waitElement                     ${MSG_ERRO_DIRETORIA}       5s
    ${text}         getText         ${MSG_ERRO_DIRETORIA}
    Should Be Equal As Strings      ${msgEsperada}              ${text}
 
Cadastrar diretoria duplicada      # Teste isolado
    Clicar                          ${NEW_CADASTRO}   
    Preencher                       ${NAME_DIRETORIA}      ${NAME_DIRETORIA_DUPLICADO}
    Clicar                          ${BUTTON_CADASTRAR}
    Sleep    10s
    Clicar                          ${NEW_CADASTRO}   
    Preencher                       ${NAME_DIRETORIA}      ${NAME_DIRETORIA_DUPLICADO}
    Clicar                          ${BUTTON_CADASTRAR}
    Sleep    10s

Validar o retorno do alert "${Alert_Erro}"
    waitElement                   ${ALERTA_DIRETORIA}        5s
    ${text}        getText        ${ALERTA_DIRETORIA} 
    Should Be Equal As Strings    ${Alert_Erro}              ${text}
    
Validar o limite no Cadastro de Diretoria
    Clicar                          ${NEW_CADASTRO}   
    ${ALEATORIO}                    FakerLibrary.Words    nb=${10}
    Preencher                       ${NAME_DIRETORIA}    ${ALEATORIO}      
    Clicar                          ${BUTTON_CADASTRAR}
    Sleep    10s

Validar o retorno da mensagem de Limite Maximo "${msgEsperada}"
    waitElement                     ${MSG_ERRO_DIRETORIA}        5s
    ${text}         getText         ${MSG_ERRO_DIRETORIA} 
    Should Be Equal As Strings      ${msgEsperada}              ${text}

Validar o retorno da mensagem de Limite Minimo "${msgEsperada}"
    waitElement                     ${MSG_ERRO_DIRETORIA}        5s
    ${text}         getText         ${MSG_ERRO_DIRETORIA} 
    Should Be Equal As Strings      ${msgEsperada}              ${text}

    