*** Settings ***
Resource    ../resources/util/util.resource
Resource    ../resources/editar_diretoria.resource
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenário 01: Editar diretoria com sucesso 
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar a página de diretoria
    Editar diretoria com sucesso     Editando aqui
    Validar a diretoria com o nome   Editando aqui

Cenário 02: Cancelar a alteracao do cadastro
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar a página de diretoria
    Cancelar a alteração da editoria     Teste
    Validar a diretoria com o nome       Editando aqui

Cenário 03: Editar diretoria com nome vazio
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar a página de diretoria
    Editar diretoria com sucesso     None
    Validar a mensagem "O campo diretoria é obrigatório"

Cenário 04: Editar diretoria com caracter não permitido
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar a página de diretoria
    Editar diretoria com sucesso    Diretoria#
    Validar o alerta "O campo 'diretoria' só pode conter letras e o caractere especial '&'."