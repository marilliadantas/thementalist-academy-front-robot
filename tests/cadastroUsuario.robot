*** Settings ***
Resource     ../resources/main.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Cadastrar usuário com sucesso
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem de sucesso "Registro realizado com sucesso"

CT02 - Cadastrar usuário com nome completo vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E não inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo nome completo é obrigatório"

CT03 - Cadastrar usuário com email vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E não inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo email é obrigatório"

CT04 - Cadastrar usuário com perfil de acesso vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E não inserir Perfil de acesso
    E inserir cpf
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo perfil de acesso é obrigatório"

CT05 - Cadastrar usuário com cpf vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E não inserir cpf
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo CPF é obrigatório"

CT06 - Cadastrar usuário com cpf com 12 caracteres
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf com 12 caracteres
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe o alerta de erro "Deve preencher o CPF com 11 dígitos"

CT07 - Cadastrar usuário com cpf com 10 caracteres
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf com 10 caracteres
    E inserir a senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe o alerta de erro "Deve preencher o CPF com 11 dígitos"

CT08 - Cadastrar usuário com senha vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf
    E não inserir senha
    E inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo senha é obrigatório"

CT09 - Cadastrar usuário com confirmar senha vazio
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E inserir nome completo
    E inserir e-mail
    E inserir Perfil de acesso
    E inserir cpf
    E inserir a senha
    E não inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe a mensagem "O campo de confirmação de senha é obrigatório"

CT10 - Cadastrar usuário com todos os campos vazios
    Dado que o usuário está logado na QaCoders academy
    Quando acessar a tela de cadastro de usuários
    E não inserir nome completo
    E não inserir e-mail
    E não inserir Perfil de acesso
    E não inserir cpf
    E não inserir senha
    E não inserir a senha novamente
    E clicar em Salvar novo
    Então o sistema exibe as mensagens de alerta   O campo nome completo é obrigatório    O campo email é obrigatório     O campo perfil de acesso é obrigatório     O campo CPF é obrigatório