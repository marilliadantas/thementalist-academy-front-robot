*** Settings ***
Resource    ../resources/util/util.resource
Library     Collections

*** Keywords ***
Listar diretoria com sucesso
    Sleep    2s 
    Wait Until Element Is Visible    locator=${BTN_CADASTRO}    timeout=10
    Click Element    ${BTN_CADASTRO}
    Wait Until Element Is Visible    locator=${BTN_DIRETORIAS} 
    Click Element    ${BTN_DIRETORIAS}
    Sleep    2s 

Validar campos do listar diretoria
    Wait Until Element Is Visible    locator=${TEXT_NAME_DIRETORIA}    timeout=10
    Wait Until Element Is Visible    locator=${TEXT_ID_DIRETORIA}      timeout=10

Validar quantidade de registros
  Wait Until Element Is Visible    ${LISTA_DIRETORIA}     10s
  ${quantidade_li}=  Get Element Count     ${LISTA_DIRETORIA} 
  Should Be True    ${quantidade_li} <= 20

Validar a ordem alfabetica
  Wait Until Element Is Visible    ${LISTA_DIRETORIA}     10s
  @{lista}    Get WebElements   ${LISTA_DIRETORIA}/p
  @{lista_texto}    Create List
  FOR    ${element}    IN    @{lista}
    ${texto}  Get Text    ${element}
    Append To List    ${lista_texto}    ${texto}      
  END    
  @{lista_ordenada}    Evaluate    sorted(@{lista_texto}, key=str.casefold)
   Lists Should Be Equal    ${lista_texto}   ${lista_ordenada}

Validar a diretoria na lista
  [Arguments]    ${nomeEsperado}
  ${text}        getTextIndex        ${LISTA}             20
  Should Be Equal As Strings         ${nomeEsperado}      ${text}