*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar o site e logar 
    Dado que o usuário acessa a página de login QaCoders Academy
    Quando inserir email  ${EMAIl}
    E inserir senha  ${SENHA}
    E clicar em entrar
    Então o sistema exibe a tela home do sistema
    
Acessar site
    Open Browser  ${geral.URL}  ${geral.Browser} 
    Maximize Browser Window

Preencher
    [Arguments]    ${locator}       ${variavel}
    Wait Until Element Is Visible   ${locator}      5
    Input Text     ${locator}       ${variavel}

Clicar
    [Arguments]      ${locator}
    Wait Until Element Is Visible   ${locator}      5
    Click Element    ${locator}

Limpar campo
    [Arguments]      ${locator}
    Wait Until Element Is Visible   ${locator}      5
    Clear Element Text    ${locator} 

Validar mensagem
    [Arguments]     ${locator}      ${texto} 
    Wait Until Element Is Visible   ${locator}      5
    Element Text Should Be          ${locator}    ${texto}     

Validar URL
    [Arguments]            ${url}
    Location Should Be     ${url}

Validar mensagens
    [Arguments]     ${alerta1}    ${alerta2}    ${alerta3}    ${alerta4}
    Element Should Contain     ${msgErroNomeCompleto}    ${alerta1}
    Element Should Contain     ${msgErroEmail}           ${alerta2} 
    Element Should Contain     ${msgErroPerfilAcesso}    ${alerta3}
    Element Should Contain     ${msgErroCPF}             ${alerta4}

Fechar navegador
    Close Browser

Screenshot
    [Arguments]        ${name_print}
    Set Screenshot Directory    ./screenshots/suites
    Capture Page Screenshot   ${name_print}