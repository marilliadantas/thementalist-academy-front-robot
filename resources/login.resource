*** Settings ***
Resource    ../resources/util/util.resource


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}    options=add_experimental_option("detach", True)
    Maximize Browser Window

Acessar página do projeto
    Go To   ${URL}
    Wait Until Element Is Visible    locator=${LOGIN}
    Wait Until Page Contains    text=${TEXT_LOGIN}

Fazer login com o usuário administrador
    Input Text      locator=${TEXT_MAIL}        text=${MAIL}
    Input Text      locator=${TEXT_PASSWORD}    text=${PASSWORD}
    Click Button    locator=${BUTTON_ENTRAR}

# Fechar o navegador
#     Close Browser