*** Settings ***

Resource    ../resources/main.robot

*** Test Cases ***

CT01 Cadastro diretoria
    Gerador de usuários
    Acessar Pagina de login
    Inserir EMAIL
    Inserir Password
    Clicar botao entrar
    Sleep    5
    Clicar botao cadastros
    Sleep    5
    Clicar botao diretorias
    Clicar botão novo cadastro
    Gerador de diretoria
    Preencher campo Nome da diretoria
    Print
    Clicar botao salvar novo

CT02 Editar diretoria
    Gerador de diretoria
    Acessar Pagina de login
    Inserir EMAIL
    Inserir Password
    Clicar botao entrar
    Sleep    5
    Clicar botao cadastros
    Clicar botao diretorias
    Selecionar ultima página
    #Selecionar ultimo cadastro
    #Print 
    ${ULTIMO_ELEMENTO}    Get Text    //ul[@class='css-76nm1l']/div/span
    Clicar botao editar ultimo elemento    ${ULTIMO_ELEMENTO}
    Renomear diretoria
    Clicar botao salvar alterações
    Print
