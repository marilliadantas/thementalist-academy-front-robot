*** Settings ***
Resource    ../main.robot

*** Variables ***
${cadastroButton}             id=Cadastros
${diretoriasButton}           id=Diretorias
${novoCadastroButton}         id=Novo Cadastro
${diretoriaInput}             id=boardName
${salvarNovoButton}           id=save
${cancelarButton}             id=cancel
${msgErro}                    //p[@class="css-bbipig"]
${alert}                      //div[@class="MuiAlert-message css-1xsto0d"]
${ultimaPaginaButton}         css=.css-76nm1l > :nth-child(5)

*** Keywords ***
Dado que o usuário está logado
    Acessar o site e logar

Quando acessar a tela de diretorias
    Clicar        ${cadastroButton} 
    Clicar        ${diretoriasButton}       

    Wait Until Page Contains           Diretorias

E clicar em novo cadastro
    Clicar        ${novoCadastroButton}

E inserir nome da diretoria válido
    ${DIRETORIA}=              FakerLibrary.Job 
    Set Test Variable          ${DIRETORIA_CRIADA}      Diretoria&${DIRETORIA} 
    Log    ${DIRETORIA_CRIADA}
    Preencher                  ${diretoriaInput}        ${DIRETORIA_CRIADA}  

E inserir diretoria "${diretoria}"
    Limpar campo     ${diretoriaInput}
    Preencher        ${diretoriaInput}      ${diretoria}

E inserir diretoria com caracter especial @
    ${DIRETORIA}=    FakerLibrary.Job 
    Preencher        ${diretoriaInput}      ${DIRETORIA} @

E não inserir diretoria
    Limpar campo     ${diretoriaInput}

Então o sistema deve exibir uma mensagem de sucesso "${msgEsperada}"
    Validar mensagem       ${alert}    ${msgEsperada}

Então o sistema deve exibir uma mensagem de erro "${msgEsperada}"
   Validar mensagem       ${alert}    ${msgEsperada}

E exibir a diretoria cadastrada               
    Clicar                        ${ultimaPaginaButton}
    Wait Until Page Contains      ${DIRETORIA_CRIADA}