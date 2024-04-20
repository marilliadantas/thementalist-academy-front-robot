*** Settings ***
Resource    ../resource/data/login.robot
Resource    ../resource/geral.resource
Resource    ../resource/login_admin.resource
Resource    ../resource/criar_centroDeCustos.resource
Library  RequestsLibrary
Library  String
Library  Collections

*** Variables ***


*** Keywords ***
Criar um novo departamento
    ${palavra_randomica}    Generate Random String    length=10    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     M${palavra_randomica}
    Set Test Variable       ${DEPARTMENT_NAME}        ${palavra_randomica}
    Log                     ${DEPARTMENT_NAME}
    
Cadastrar o novo departamento criado
    ${body}    Create Dictionary    departmentName=${DEPARTMENT_NAME}    costCenterId=${ID_COSTCENTER}
    Log  ${body}
    Criar sessão
    Entrar com usuário sysadmin
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session     alias=TheMentalist        url=/api/department/    json=${body}  headers=${headers}   expected_status=201
    Log    ${resposta.json()}
    Set Test Variable    ${ID_DEPARTMENT}      ${resposta.json()["newDepartment"]["_id"]}
    Set Test Variable    ${RESPOSTA}           ${resposta.json()}

Conferir se este novo departamento foi cadastrado corretamente
    Log   ${RESPOSTA}
    Dictionary Should Contain Item    ${RESPOSTA}                    msg    Cadastro realizado com sucesso.
    Dictionary Should Contain Key     ${RESPOSTA["newDepartment"]}   _id   
    Status Should Be    201