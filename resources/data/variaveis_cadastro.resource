*** Settings ***
Resource    ../../resources/util/util.resource

*** Keywords ***
Gerar Dados de Usuário
    ${NOME}          FakerLibrary.First Name
    ${SOBRENOME}     FakerLibrary.Last Name
    ${USERNAME}      FakerLibrary.User Name
    ${CPF_FAKE}      FakerLibrary.random_number      11
    Set Test Variable    ${NOME}
    Set Test Variable    ${SOBRENOME}
    Set Test Variable    ${USERNAME}
    Set Test Variable    ${CPF_FAKE}