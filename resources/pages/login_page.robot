*** Settings ***

Documentation    este arquivo contém todos os elementos da página de login.
Resource    ../main.robot
*** Variables ***

${CAMPO_EMAIL}    id=email
${CAMPO_SENHA}    id=password
${BOTAO_LOGIN}    id=login
${BOTAO_LOGOUT}   //button[contains{text(),'Logout'}]
${CAMPO_ERRO}    //div[@class='MuiAlert-message css-1xsto0d']
${BOTAO_CADASTROS}    //span[contains(text(),'Cadastros')]
${BOTAO_USUÁRIOS}    id=Usuários
${BOTAO_NOVO_CADASTRO}    id=Novo Cadastro
${CAMPO_NOME}    id=fullName
${CAMPO_EMAIL_USUÁRIO}    id=mail
${CAMPO_ PERFIL_ACESSO}    id=accessProfile
${CAMPO_CPF}    id=cpf
${CAMPO_SENHA_USUÁRIO}    id=password
${CONFIRME_SENHA}    id=confirmPassword
${SALVAR_NOVO}        id=save
${BOTAO_DIRETORIAS}    //span[contains(text(),'Diretorias')]
${BOTAO_NOVO_CADASTRO}    id=Novo Cadastro
${CAMPO_NOME_DIRETORIA}    id=boardName
${BOTAO_SALVAR_NOVO}    id=save
${BOTAO_ULTIMA_PAGINA}    (//button[@class='css-kab9pu'])[2]
#${ULTIMO_CADASTRO}    //ul[@class="css-18psgb0"]/li[div/p[text()="${CODIGO_ULTIMA_DIRETORIA}"]]/div/button[@id="edit"]
#${ULTIMO_EDIT}    //ul[@class="css-18psgb0"]/li[div/p[text()="${CODIGO_ULTIMA_DIRETORIA}"]]/div/button[@id="edit"]
${BOTAO_SALVAR_ALTERAÇOES}    id=save

# //div[@class='css-1nvbq2d']
# //button[contains(@class,’css-1nvbq2d’)]
#//div[contains{text(), 'Cadastros'}]
#
${BOTAO_VERSIONAMENTO}    id=naoseioquefazer
