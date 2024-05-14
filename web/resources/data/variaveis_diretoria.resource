*** Settings ***
Resource    ../util/util.resource

*** Variables ***
${DIRETORIA_CRIADA}   

*** Keywords ***
Gerar dados de diretoria
    ${palavra_randomica}    Generate Random String    length=10    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    ${DIRETORIA_CRIADA}=    Catenate       Diretoria&${palavra_randomica}
    Set Test Variable       ${DIRETORIA_CRIADA}