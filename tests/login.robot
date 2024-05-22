*** Settings ***

Resource    ../resources/main.robot



Library    OperatingSystem

*** Test Cases ***
CT01 - Login com Sucesso
    Acessar Pagina de Login
    Inserir EMAIL
    Inserir password
    Clicar botao entrar
    Validar URL
    Pagina contem elemento logout
    Capture Page Screenshot    login_sucesso.png 
 
CT02 - Email inválido
    Acessar Pagina de Login
    Iserir Email inválido
    Inserir password
    Clicar botao entrar
    Pagina contem messagem de erro
    Capture Page Screenshot    email_invalido.png 


CT03 - Senha inválida
    Acessar Pagina de Login
    Inserir EMAIL  
    Inserir invalid Password
    Clicar botao entrar
    Pagina contem messagem de erro
    Capture Page Screenshot    senha_invalida.png 

CT04 - Campos em branco
    Acessar Pagina de Login
#    Inserir EMAIL  
#    Inserir valid Password
    Clicar botao entrar
    Pagina contem messagem de erro
    Capture Page Screenshot    senha_invalida.png 

CT05 - Logout com Sucesso
    Acessar Pagina de Login
    Inserir EMAIL
    Inserir password
    Clicar botao entrar
    Validar URL
    Pagina contem elemento logout
    Clicar botao logout
#    validar se voltou a pagina de login
    Capture Page Screenshot    logout_sucesso.png    


