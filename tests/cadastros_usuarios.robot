*** Settings ***

Resource    ../resources/main.robot

*** Test Cases ***
CT01 - Cadastro de novo Usuário
    Gerador de usuários
    Acessar Pagina de login
    Inserir EMAIL
    Inserir Password
    Clicar botao entrar
    Sleep    5
    Clicar botao cadastros
    Clicar botao usuários
    Clicar botao novo cadastro
    Preencher campo nome completo
    Preencher campo Email
    Preencher campo pefil de acesso
    Preencher campo CPF
    Preencher campo senha
    Preencher campo confirme senha
    Clicar botao salvar novo usuário

CT02 - Cadastro de novo Usuário Nome incompleto
    Gerador de usuários
    Acessar Pagina de login
    Inserir EMAIL
    Inserir Password
    Clicar botao entrar
    Sleep    5
    Clicar botao cadastros
    Clicar botao usuários
    Clicar botao novo cadastro
    Preencher campo nome incompleto
    Preencher campo Email
    Preencher campo pefil de acesso
    Preencher campo CPF
    Preencher campo senha
    Preencher campo confirme senha
    Clicar botao salvar novo usuário
    Mensagem de erro