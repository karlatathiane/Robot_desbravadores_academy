*** Settings ***

Resource    ../main.robot


*** Keywords ***

Gerador de usuários
    ${NOME}    FakerLibrary.Name 
    Set Test Variable    ${NOME}    ${NOME} 
    ${CAMPO_CPF_USUÁRIO}    FakerLibrary.CPF
    ${CAMPO_CPF_USUÁRIO}    Remove String    ${CAMPO_CPF_USUÁRIO}    .    -
    Set Test Variable    ${CAMPO_CPF_USUÁRIO}    ${CAMPO_CPF_USUÁRIO}
    ${EMAIL_USUÁRIO}    FakerLibrary.Free Email
    Set Test Variable    ${EMAIL_USUÁRIO}        ${EMAIL_USUÁRIO}    

Gerador de diretoria
    ${nome} =     Generate Random String    5    [LOWER]
    ${nome_personalizado} =    Evaluate    "${nome}".title()
    Set Test Variable    ${NOME_DIRETORIA}    ${nome_personalizado}    

Acessar Pagina de login
    Open Browser    ${URL}    ${NAVEGADOR}
    Maximize Browser Window    
    Capture Page Screenshot    

Inserir EMAIL
    Preencher dados    ${CAMPO_EMAIL}    ${EMAIL}

Inserir Password
    Preencher dados    ${CAMPO_SENHA}    ${SENHA}    

Clicar botao entrar   
    Click Button    ${BOTAO_LOGIN}

Validar URL
    Wait Until Location Contains    ${URL_HOME}
    Location Should Be    ${URL_HOME}   

Pagina contem elemento logout
    Page Should Contain Element    ${BOTAO_LOGOUT} 

Iserir Email inválido
    Preencher dados    ${CAMPO_EMAIL}     ${EMAIL_INVALIDO}
    

Pagina contem messagem de erro
    Wait Until Element Is Visible    ${CAMPO_ERRO}    ${TIME}
    Page Should Contain Element    ${CAMPO_ERRO}

Inserir invalid Password
    Preencher dados    ${CAMPO_SENHA}    ${SENHA_INVALIDA}
 Clicar botao logout
     Click Button    ${BOTAO_LOGOUT}

Clicar botao cadastros    Wait Until Element Is Visible    ${BOTAO_CADASTROS}    ${TIME}
    Click Element    ${BOTAO_CADASTROS}

Clicar botao usuários
    Click Element    ${BOTAO_USUÁRIOS}
Clicar botao novo cadastro
    Wait Until Element Is Visible    ${BOTAO_NOVO_CADASTRO}    ${TIME}
    Click Element    ${BOTAO_NOVO_CADASTRO}

 Preencher campo nome completo
    Preencher dados    ${CAMPO_NOME}    ${NOME}

Preencher campo Email
    Preencher dados    ${CAMPO_EMAIL_USUÁRIO}    ${EMAIL_USUÁRIO}   

Preencher campo pefil de acesso
    Preencher dados    ${CAMPO_ PERFIL_ACESSO}    ${PERFIL_ACESSO}

Preencher campo CPF
    Preencher dados    ${CAMPO_CPF}    ${CAMPO_CPF_USUÁRIO}

Preencher campo senha
    Preencher dados    ${CAMPO_SENHA_USUÁRIO}    ${SENHA_USUÁRIO}

Preencher campo confirme senha
    Preencher dados    ${CONFIRME_SENHA}    ${SENHA_USUÁRIO}

Clicar botao salvar novo usuário
    Click Element    ${SALVAR_NOVO}

Preencher campo nome incompleto
    Preencher dados    ${CAMPO_NOME}    ${NOME_INCOMPLETO}

Clicar botao diretorias
    Click Element    ${BOTAO_DIRETORIAS}

Clicar botão novo cadastro
    Click Element    ${BOTAO_NOVO_CADASTRO}

Preencher campo Nome da diretoria
    Preencher dados    ${CAMPO_NOME_DIRETORIA}    ${NOME_DIRETORIA}

Print
    Capture Page Screenshot    

Clicar botao salvar novo
    Click Element    ${BOTAO_SALVAR_NOVO}

Selecionar ultima página     
    Wait Until Page Contains Element    (//button[@class='css-kab9pu'])[2]    15
    Scroll Element Into View    (//button[@class='css-kab9pu'])[2]
    Click Element    ${BOTAO_ULTIMA_PAGINA}

#Selecionar ultimo cadastro
   # Click Element    ${ULTIMO_CADASTRO}

Clicar botao editar ultimo elemento
    [Arguments]    ${ULTIMO_ELEMENTO}
    Sleep    10
    Scroll Element Into View    //ul[@class="css-18psgb0"]/li[div/p[text()="${ULTIMO_ELEMENTO}"]]/div/button[@id="edit"]
    #Wait Until Page Contains Element    ${ULTIMO_ELEMENTO}    15
    #Wait Until Element Is Visible    //ul[@class="css-18psgb0"]/li[div/p[text()="${ULTIMO_ELEMENTO}"]]/div/button[@id="edit"]    10   
    Click Element    //ul[@class="css-18psgb0"]/li[div/p[text()="${ULTIMO_ELEMENTO}"]]/div/button[@id="edit"] 

Renomear diretoria
    Clear Element Text    ${CAMPO_NOME_DIRETORIA}
    Print
    Preencher dados    ${CAMPO_NOME_DIRETORIA}    ${NOME_DIRETORIA}

Clicar botao salvar alterações
    Print
    Click Element    ${BOTAO_SALVAR_ALTERAÇOES}

