*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
getTextIndex
    [Arguments]                     ${element}        ${index}
    ${elementos}=                    Get WebElements   ${element}
    ${elemento}=                     Set Variable      ${elementos}[${index}]
    ${text}=                         Get Text          ${elemento}
    [Return]                         ${text}
