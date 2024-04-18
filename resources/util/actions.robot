*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
getTextIndex
    [Arguments]                     ${element}        ${index}
    ${elementos}=                    Get WebElements   ${element}
    ${elemento}=                     Set Variable      ${elementos}[${index}]
    ${text}=                         Get Text          ${elemento}
    [Return]                         ${text}

waitElement
    [Arguments]                      ${elements}       ${time}
    Wait Until Element Is Visible    ${elements}       ${time}

preencher
    [Arguments]    ${locator}       ${variavel}    
    waitElement                     ${locator}        10s
    Input Text     ${locator}       ${variavel}

clicar
    [Arguments]                      ${element}
    waitElement                      ${element}       10s
    Click Element                    ${element}

clicarTexto
    [Arguments]                      ${element}        ${text}
    waitElement                      ${element}        10s
    ${text}                          Get Text          ${element}
    Click Element                    ${element}     

clear
    [Arguments]                      ${element}
    waitElement                      ${element}        10s
    Clear Element Text               ${element}    
    
Validar mensagem
    [Arguments]     ${locator}      ${texto} 
    waitElement     ${locator}      10s
    Element Text Should Be          ${locator}    ${texto}     