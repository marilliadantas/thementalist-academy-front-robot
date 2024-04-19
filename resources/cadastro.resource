*** Settings ***
Resource    ../resources/util/util.resource
Resource    data/variaveis_cadastro.resource

*** Keywords ***
Acessar tela de cadastro
    waitElement                                ${BTN_CADASTRO}     10s
    Click Element                              ${BTN_CADASTRO} 
    Clicar                                     ${BUTTON_USUARIOS}            
    Clicar                                     ${NEW_CADASTRO}        
    
    Wait Until Element Is Enabled              ${FULLNAME}
    Wait Until Page Contains                   Novo Cadastro
    
Cadastrar usuário com sucesso 
    Gerar Dados de Usuário
    Preencher          ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher          ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher          ${ACESSPROFILE}          ADMIN
    Preencher          ${CPF}                   ${CPF_FAKE}
    Preencher          ${PASSWORD_CADASTRO}     Qa#12336
    Preencher          ${CONFIRMPASSWORD}       Qa#12336
    Clicar             ${BUTTON_CADASTRAR}

Cadastrar usuário com nome completo vazio
    Gerar Dados de Usuário
    Limpar campo      ${FULLNAME}             
    Preencher         ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher         ${ACESSPROFILE}          ADMIN   
    Preencher         ${CPF}                   ${CPF_FAKE} 
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com nome email vazio
    Gerar Dados de Usuário
    Preencher         ${FULLNAME}              ${NOME} ${SOBRENOME} 
    Limpar campo      ${MAIL_CADASTRO}         
    Preencher         ${ACESSPROFILE}          ADMIN  
    Preencher         ${CPF}                   ${CPF_FAKE} 
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com perfil de acesso vazio
    Gerar Dados de Usuário
    Preencher         ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher         ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Limpar campo      ${ACESSPROFILE}          
    Preencher         ${CPF}                   ${CPF_FAKE} 
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf vazio
    Gerar Dados de Usuário
    Preencher         ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher         ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher         ${ACESSPROFILE}          ADMIN
    Limpar campo      ${CPF}                   
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf de 12 digitos
    Gerar Dados de Usuário
    Preencher         ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher         ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher         ${ACESSPROFILE}          ADMIN
    Preencher         ${CPF}                   123456743214
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com cpf de 10 digitos
    Gerar Dados de Usuário
    Preencher         ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher         ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher         ${ACESSPROFILE}          ADMIN   
    Preencher         ${CPF}                   1234567432
    Preencher         ${PASSWORD_CADASTRO}     Qa#12336
    Preencher         ${CONFIRMPASSWORD}       Qa#12336
    Clicar            ${BUTTON_CADASTRAR}

Cadastrar usuário com senha vazio
    Gerar Dados de Usuário
    Preencher          ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher          ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher          ${ACESSPROFILE}          ADMIN
    Preencher          ${CPF}                   ${CPF_FAKE} 
    Limpar campo       ${PASSWORD_CADASTRO}      
    Preencher          ${CONFIRMPASSWORD}       Qa#12336
    Clicar             ${BUTTON_CADASTRAR}

Cadastrar usuário com confirmar senha vazio
    Gerar Dados de Usuário
    Preencher          ${FULLNAME}              ${NOME} ${SOBRENOME} 
    Preencher          ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher          ${ACESSPROFILE}          ADMIN
    Preencher          ${CPF}                   ${CPF_FAKE} 
    Preencher          ${PASSWORD_CADASTRO}     Qa#12336
    Limpar campo       ${CONFIRMPASSWORD}        
    Clicar             ${BUTTON_CADASTRAR}

Cadastrar usuário com senhas diferentes
    Gerar Dados de Usuário
    Preencher          ${FULLNAME}              ${NOME} ${SOBRENOME}
    Preencher          ${MAIL_CADASTRO}         ${USERNAME}@qacoders.com.br
    Preencher          ${ACESSPROFILE}          ADMIN
    Preencher          ${CPF}                   ${CPF_FAKE} 
    Preencher          ${PASSWORD_CADASTRO}     Qa#12336
    Preencher          ${CONFIRMPASSWORD}       testE123$
    Clicar             ${BUTTON_CADASTRAR}

Cadastrar usuário com todos os campos vazios
    Limpar campo         ${FULLNAME}              
    Limpar campo         ${MAIL_CADASTRO}         
    Limpar campo         ${ACESSPROFILE}         
    Limpar campo         ${CPF}                    
    Limpar campo         ${PASSWORD_CADASTRO}      
    Limpar campo         ${CONFIRMPASSWORD}        
    Clicar               ${BUTTON_CADASTRAR}

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