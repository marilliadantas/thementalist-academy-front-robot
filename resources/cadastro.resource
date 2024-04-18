*** Settings ***
Resource    ../resources/util/util.resource

*** Keywords ***
Acessar tela de cadastro
    waitElement                      ${BTN_CADASTRO}     10s
    clicar                           ${BTN_CADASTRO} 
    clicar                           ${BUTTON_USUARIOS}            
    clicar                           ${NEW_CADASTRO}        
    
    Wait Until Element Is Visible    ${FULLNAME}
    Wait Until Page Contains         Novo Cadastro
    
Cadastrar usuário com sucesso
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com nome completo vazio
    ${usernameAleatorio}     FakerLibrary.User Name
    
    clear         ${FULLNAME}             
    preencher     ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher     ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher          ${CPF}                    ${cpfAleatorio} 
    preencher          ${PASSWORD_CADASTRO}      Qa#12336
    preencher          ${CONFIRMPASSWORD}        Qa#12336
    clicar             ${BUTTON_CADASTRAR}

Cadastrar usuário com nome email vazio
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    clear              ${MAIL_CADASTRO}         
    preencher          ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com perfil de acesso vazio
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    clear              ${ACESSPROFILE}          

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf vazio
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN
    
    clear             ${CPF}                   
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf de 12 digitos
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN
    
    preencher         ${CPF}                    123456743214
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf de 10 digitos
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN
    
    preencher         ${CPF}                    1234567432
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com senha vazio
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    clear             ${PASSWORD_CADASTRO}      
    preencher         ${CONFIRMPASSWORD}        Qa#12336
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com confirmar senha vazio
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    clear             ${CONFIRMPASSWORD}        
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com senhas diferentes
    ${nomeAleatorio}         FakerLibrary.First Name
    ${sobrenomeAleatorio}    FakerLibrary.Last Name
    ${usernameAleatorio}     FakerLibrary.User Name
    
    preencher          ${FULLNAME}              ${nomeAleatorio} ${sobrenomeAleatorio} 
    preencher          ${MAIL_CADASTRO}         ${usernameAleatorio}@qacoders.com.br
    preencher          ${ACESSPROFILE}          ADMIN

    ${cpfAleatorio}     FakerLibrary.random_number        11    11 
    
    preencher         ${CPF}                    ${cpfAleatorio} 
    preencher         ${PASSWORD_CADASTRO}      Qa#12336
    preencher         ${CONFIRMPASSWORD}        testE123$
    clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com todos os campos vazios
    clear         ${FULLNAME}              
    clear         ${MAIL_CADASTRO}         
    clear         ${ACESSPROFILE}         
    clear         ${CPF}                    
    clear         ${PASSWORD_CADASTRO}      
    clear         ${CONFIRMPASSWORD}        
    clicar        ${BUTTON_CADASTRAR}

Validar a mensagem "${msgEsperada}"
    waitElement    ${MSG_ERRO}       5s
    ${text}        getText        ${MSG_ERRO}
    Should Be Equal As Strings    ${msgEsperada}        ${text}

Validar o alerta "${alertaEsperado}"
    waitElement    ${MSG_ALERT}       5s
    ${text}        getText        ${MSG_ALERT}
    Should Be Equal As Strings    ${alertaEsperado}     ${text}

Validar as mensagens
    [Arguments]        ${alerta1}    ${alerta2}   ${alerta3}   ${alerta4}
    ${text}        getTextIndex      ${msgErro}    0
    Should Be Equal As Strings       ${alerta1}        ${text}
    ${text}        getTextIndex      ${msgErro}    1
    Should Be Equal As Strings       ${alerta2}        ${text}
    ${text}        getTextIndex      ${msgErro}    2
    Should Be Equal As Strings       ${alerta3}        ${text}
    ${text}        getTextIndex      ${msgErro}    3
    Should Be Equal As Strings       ${alerta4}        ${text}