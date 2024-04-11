*** Settings ***
Resource    ../main.robot

*** Variables ***
${salvarNovoButton}           id=save
${primeiroLista}              (//button[@name='editar'][contains(.,'Editar')])[1]
${titleDiretoria}             //p[contains(.,'Editando aqui')]

*** Keywords ***
E clicar em editar
    Clicar    ${primeiroLista}

E clicar em salvar alterações
    Clicar    ${salvarNovoButton}

Então o sistema deve exibir a diretoria com o nome "${tituloEsperado}"
    Validar mensagem    ${titleDiretoria}    ${tituloEsperado}