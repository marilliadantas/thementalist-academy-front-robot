*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Cadastrar usuário com sucesso
    Wait Until Element Is Visible    locator=${BUTTON_CADASTRO}    timeout=10
    Click Element    Cadastros
    Click Element    Usuários
    Wait Until Element Is Visible    locator=${NEW_CADASTRO}
    Click Button    ${NEW_CADASTRO}
    
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    Input Text          locator=${FULLNAME}               text=${nomeAleatorio} ${sobrenomeAleatorio} 
    Input Text          locator=${MAIL_CADASTRO}          text=${usernameAleatorio}@qacoders.com.br
    Input Text          locator=${ACESSPROFILE}           text=ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    Input Text          locator=${CPF}                    text=${cpfAleatorio} 
    Input Text          locator=${PASSWORD_CADASTRO}      text=Qa#12336
    Input Text          locator=${CONFIRMPASSWORD}        text=Qa#12336
    Click Button        locator=${BUTTON_CADASTRAR}