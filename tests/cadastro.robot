*** Settings ***
Resource    ../resources/util/util.resource
Test Setup    Fechar o navegador

*** Test Cases ***
<<<<<<< HEAD
Cenário 01: Cadastrar usuário 
=======

Cenario 01: Cadastrar usuario 
>>>>>>> 1c60a611d8f53419a232f1deacea6907d02c9e60
    [Tags]             cadastro_usuario
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com sucesso

Cenário 02 - Cadastrar usuário com nome completo vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com nome completo vazio
    Validar a mensagem "O campo nome completo é obrigatório"

Cenário 03 - Cadastrar usuário com email vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com nome email vazio
    Validar a mensagem "O campo email é obrigatório"

Cenário 04 - Cadastrar usuário com perfil de acesso vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com perfil de acesso vazio
    Validar a mensagem "O campo perfil de acesso é obrigatório"

Cenário 05 - Cadastrar usuário com cpf vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com cpf vazio
    Validar a mensagem "O campo CPF é obrigatório"

Cenário 06 - Cadastrar usuário com cpf com 12 caracteres
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com cpf de 12 digitos
    Validar o alerta "Deve preencher o CPF com 11 dígitos"

Cenário 08 - Cadastrar usuário com senha vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com senha vazio
    Validar o alerta "O campo senha é obrigatório"

Cenário 09 - Cadastrar usuário com confirmar senha vazio
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com confirmar senha vazio
    Validar o alerta "O campo de confirmação de senha é obrigatório."

Cenário 10 - Cadastrar usuário com senhas diferentes
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com senhas diferentes
    Validar o alerta "As senhas não conferem."

Cenário 11 - Cadastrar usuário com todos os campos vazios
    Abrir o navegador   
    Acessar página do projeto
    Fazer login com o usuário administrador
    Acessar tela de cadastro
    Cadastrar usuário com todos os campos vazios
    Validar as mensagens   O campo nome completo é obrigatório    O campo email é obrigatório     O campo perfil de acesso é obrigatório     O campo CPF é obrigatório