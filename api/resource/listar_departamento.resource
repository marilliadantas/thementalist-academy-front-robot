*** Settings ***
Resource    ../resource/data/login.robot
Resource    ../resource/geral.resource
Resource    ../resource/login_admin.resource
Library  RequestsLibrary
Library  String
Library  Collections

*** Variables ***
${id_do_departamento}       65fc82f7ad6e4fed4c9095e2
${id_invalido}              65fc82f7ad6e4fed4c9095e1    

*** Keywords ***
Listar todos os departamentos
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    GET On Session     alias=TheMentalist    url=/api/department/    headers=${headers}   expected_status=200
    Log    ${resposta}

    ${json}=    Set Variable    ${resposta.json()}    
    ${department_name}=    Set To Dictionary    ${json}[0]
    Log    ${department_name}
    
    Should Not Be Empty       ${department_name["departmentName"]}
    Should Be True            ${department_name["status"]}
    Should Not Be Empty       ${department_name["costCenter"]["costCenterName"]}

Listar departamento por ID
    [Arguments]    ${id_do_departamento}
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    GET On Session     alias=TheMentalist   url=/api/department/${id_do_departamento}    headers=${headers}   expected_status=200
    Log    ${resposta}
    
    Should Be Equal As Strings    ${resposta.status_code}                                             200
    Should Be Equal As Strings    ${resposta.json()["department"]["departmentName"]}                  Garden
    Should Be Equal As Strings    ${resposta.json()["department"]["_id"]}                             ${id_do_departamento}                   
    Should Be Equal As Strings    ${resposta.json()["department"]["costCenter"]["_id"]}               65fc8215ad6e4fed4c9095c4
    Should Be Equal As Strings    ${resposta.json()["department"]["costCenter"]["costCenterName"]}    Serviços de Contabilidade

    Log     ${resposta.json()}
    Log     ${resposta.json()["department"]["departmentName"]}

Listar departamento por ID inválido
    [Arguments]    ${id_invalido}
    ${headers}=    Create Dictionary    Authorization=${TOKEN}
    ${resposta}=    GET On Session     alias=TheMentalist   url=/api/department/${id_invalido}    headers=${headers}   expected_status=404
    Log    ${resposta}
    
    Should Be Equal As Strings    ${resposta.status_code}      404
    Should Be Equal As Strings    ${resposta.json()["msg"]}    Não foi possível encontrar o departamento com o id especificado

    Log     ${resposta.json()}
    Log     ${resposta.json()["msg"]}
  
Listar total de departamentos
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    GET On Session     alias=TheMentalist    url=/api/department/count   headers=${headers}   expected_status=200
    Log    ${resposta}

    Should Be Equal As Strings    ${resposta.status_code}      200
    
    ${total_departamentos}=    Convert To Integer    ${resposta.json()["count"]}
    Should Be True    ${total_departamentos} > 0