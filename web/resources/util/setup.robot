*** Settings ***
Resource    ./util.resource

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    # Set Selenium Speed    0.5

Fechar o navegador
    Close Browser