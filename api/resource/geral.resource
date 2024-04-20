*** Settings ***
Resource    ../resource/data/login.robot
Library  RequestsLibrary
Library  String
Library  Collections

*** Variables ***
${url}         https://the-mentalists.qacoders-academy.com.br

*** Keywords ***
Criar sessão
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=TheMentalist    url=${url}     headers=${headers}