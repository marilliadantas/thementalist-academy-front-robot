*** Settings ***
Resource    ../resource/geral.resource
Resource    ../resource/login_admin.resource
Resource    ../resource/listar_departamento.resource

*** Test Cases ***
CT01 - Listar departamentos
    Criar sessão
    Entrar com usuário sysadmin
    Listar todos os departamentos

CT02 - Listar departamento por ID
    Criar sessão
    Entrar com usuário sysadmin
    Listar departamento por ID    ${id_do_departamento}

CT03 - Listar departamento por ID invalido
    Criar sessão
    Entrar com usuário sysadmin
    Listar departamento por ID inválido    ${id_invalido}

CT04 - Listar total de departamentos
    Criar sessão
    Entrar com usuário sysadmin
    Listar total de departamentos