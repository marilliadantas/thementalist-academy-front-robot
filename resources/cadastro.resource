*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Cadastrar usuário com sucesso
    Wait Until Element Is Visible    locator=${BUTTON_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Usuários
    Wait Until Element Is Visible    locator=${NEW_CADASTRO}
    Click Button    ${NEW_CADASTRO}
    Input Text      locator=${FULLNAME}           text=Mayla Santoa
    Input Text      locator=${MAIL_CADASTRO}      text=lmay@gmailqa.com.br
    Input Text      locator=${ACESSPROFILE}       text=ADMIN
    Input Text      locator=${CPF}                text=83677000004
    Input Text      locator=${PASSWORD_CADASTRO}  text=Qa#12336
    Input Text      locator=${CONFIRMPASSWORD}    text=Qa#12336
    Click Button    locator=${BUTTON_CADASTRAR}