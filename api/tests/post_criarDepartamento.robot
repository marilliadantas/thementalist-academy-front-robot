*** Settings ***
Resource    ../resource/geral.resource
Resource    ../resource/login_admin.resource
Resource    ../resource/criar_diretoria.resource
Resource    ../resource/criar_centroDeCustos.resource
Resource    ../resource/criar_departamento.resource

*** Test Cases ***
CT01 - Criar departamento
    Criar sessão
    Entrar com usuário sysadmin
    Criar uma nova diretoria
    Cadastrar a nova diretoria criada
    Conferir se esta nova diretoria foi cadastrada corretamente
    Criar um novo centro de custos
    Cadastrar o novo centro de custos criado
    Conferir se este novo centro de custos foi cadastrado corretamente
    Criar um novo departamento
    Cadastrar o novo departamento criado
    Conferir se este novo departamento foi cadastrado corretamente