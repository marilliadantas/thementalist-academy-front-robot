*** Settings ***
Resource    ../resource/data/login.robot
Resource    ../resource/geral.resource
Resource    ../resource/login_admin.resource
Resource    ../resource/criar_diretoria.resource
Library  String
Library  Collections

*** Variables ***

*** Keywords ***
Criar um novo centro de custos
    ${palavra_randomica}    Generate Random String    length=10    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${COSTCENTER_NAME}        ${palavra_randomica}
    Log                     ${COSTCENTER_NAME}
    
Cadastrar o novo centro de custos criado
    ${body}    Create Dictionary    costCenterName=${COSTCENTER_NAME}    boardId=${ID_BOARD}
    Log  ${body}
    Criar sessão
    Entrar com usuário sysadmin
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session     alias=TheMentalist    url=/api/costCenter/  json=${body}  headers=${headers}   expected_status=201
    Log    ${resposta.json()}
    Set Test Variable    ${ID_COSTCENTER}      ${resposta.json()["newCostCenter"]["_id"]}
    Set Test Variable    ${RESPOSTA}      ${resposta.json()}

Conferir se este novo centro de custos foi cadastrado corretamente
    Log   ${RESPOSTA}
    Dictionary Should Contain Item    ${RESPOSTA}                    msg    Cadastro realizado com sucesso.
    Dictionary Should Contain Key     ${RESPOSTA["newCostCenter"]}   board     
    Status Should Be    201