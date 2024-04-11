*** Settings ***
Resource    ../main.robot

*** Variables ***
${cadastroButton}             id=Cadastros
${usuariosButton}             //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${novoCadastroButton}         id=Novo Cadastro
${nomeInput}                  id=fullName
${mailIInput}                 //input[contains(@name,'mail')]
${perfilAcessoInput}          id=accessProfile
${cpfInput}                   id=cpf
${senhaInput}                 id=password
${confirmSenhaInput}          id=confirmPassword
${salvarNovoButton}           id=save
${cancelarButton}             id=cancel
${tituloForm}                 //h5[@class='css-np5g2k'][contains(.,'Novo Cadastro')]
${msgErro}                    //p[@class="css-bbipig"]
${alert}                      //div[@class="MuiAlert-message css-1xsto0d"]
${msgErroNomeCompleto}        //p[@class='css-bbipig'][contains(.,'O campo nome completo é obrigatório')]
${msgErroEmail}               //p[@class='css-bbipig'][contains(.,'O campo email é obrigatório')]
${msgErroPerfilAcesso}        //p[@class='css-bbipig'][contains(.,'O campo perfil de acesso é obrigatório')]
${msgErroCPF}                 //p[@class='css-bbipig'][contains(.,'O campo CPF é obrigatório')]


*** Keywords ***
Dado que o usuário está logado na QaCoders academy
    Acessar o site e logar 

Quando acessar a tela de cadastro de usuários
    Clicar         ${cadastroButton}    
    Clicar         ${usuariosButton}
    Clicar         ${novoCadastroButton}

    Wait Until Page Contains              Novo Cadastro
    
E inserir nome completo
    ${NOME}                         FakerLibrary.FirstName
    Preencher      ${nomeInput}     ${NOME} Silva

E inserir e-mail
    ${USERNAME}                     FakerLibrary.username
    ${EMAIL}                        Set Variable                 ${USERNAME}@qacoders.com
    Preencher     ${mailIInput}     ${EMAIL}

E inserir Perfil de acesso
    Preencher     ${perfilAcessoInput}    ${PERFILACESSO}

E inserir cpf
    ${CPF}                          FakerLibrary.random_number    11    11 
    Preencher     ${cpfInput}       ${CPF}              

E inserir a senha
    Preencher    ${senhaInput}     ${PASSWORD}

E inserir a senha novamente
    ${CONFIRM_PASSWORD}             Set Variable                  ${PASSWORD}
    Preencher    ${confirmSenhaInput}                             ${CONFIRM_PASSWORD}

E não inserir nome completo
    Limpar campo    ${nomeInput}

E não inserir e-mail      
    Limpar campo   ${mailIInput}

E não inserir Perfil de acesso
    Limpar campo   ${perfilAcessoInput}

E não inserir cpf
    Limpar campo   ${cpfInput} 

E inserir cpf com 12 caracteres
    Preencher    ${cpfInput}    ${CPF_INVALIDO} 

E inserir cpf com 10 caracteres
    Preencher    ${cpfInput}    ${CPF_INVALIDO_10}

E não inserir senha
    Limpar campo   ${senhaInput} 

E não inserir a senha novamente
    Limpar campo  ${confirmSenhaInput}
    
E clicar em Salvar novo
    clicar     ${salvarNovoButton}

Então o sistema exibe a mensagem de sucesso "${msgSucesso}"
    Validar mensagem     ${alert}    ${msgSucesso}

Então o sistema exibe a mensagem "${mensagemErro}"
    Validar mensagem    ${msgErro}   ${mensagemErro}

Então o sistema exibe o alerta de erro "${msgErro}"
    Validar mensagem     ${alert}    ${msgErro}

Então o sistema exibe as mensagens de alerta
   [Arguments]         ${alerta1}    ${alerta2}    ${alerta3}    ${alerta4}
   Validar mensagens   ${alerta1}    ${alerta2}    ${alerta3}    ${alerta4}