*** Settings ***
Resource    ../resources/pages/editarDiretoria_page.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Editar diretoria com sucesso
    [Tags]     editar
    Dado que o usuário está logado
    Quando acessar a tela de diretorias
    E clicar em editar
    E inserir diretoria "Editando aqui"
    E clicar em salvar alterações
    Então o sistema deve exibir a diretoria com o nome "Editando aqui"