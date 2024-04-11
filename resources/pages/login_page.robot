*** Settings ***
Resource    ../main.robot

*** Variables ***
${emailInput}                 id=email
${senhaInput}                 id=password
${entrarButton}               id=login
${cadastroButton}             id=Cadastros
${logoutButton}               //button[@class="css-1nvbq2d"]
${alertErro}                  //div[@class="MuiAlert-message css-1xsto0d"]
${msgRequired}                //p[@class="css-18xtib3"]
${homeURL}                    https://automacao.qacoders-academy.com.br/home

*** Keywords ***
Dado que o usuário acessa a página de login QaCoders Academy
    Acessar site

Quando inserir email
    [Arguments]    ${email}
    Preencher      ${emailInput}    ${email}

E inserir senha
    [Arguments]    ${senha}
    Preencher      ${senhaInput}    ${senha}

Quando não preencher email
    Limpar campo    ${emailInput}
    
E não preencher senha
    Limpar campo    ${senhaInput}

E clicar em entrar
    Clicar    ${entrarButton}

Então o sistema exibe a tela home do sistema
    Validar mensagem                     ${logoutButton}       Logout
    Validar mensagem                     ${cadastroButton}     Cadastros
    Validar URL                          ${homeURL}

Então o sistema exibe a mensagem de erro "${alertaErroEsperado}"
    Validar mensagem    ${alertErro}     ${alertaErroEsperado}

Então o sistema exibe a mensagem de campo obrigatório "${msgEsperada}"
    Validar mensagem    ${msgRequired}    ${msgEsperada}

Então o sistema exibe as mensagens
    [Arguments]        ${alerta1}    ${alerta2}
    Should Be Equal    ${alerta1}    O email é obrigatório
    Should Be Equal    ${alerta2}    A senha é obrigatória