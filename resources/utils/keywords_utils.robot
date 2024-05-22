*** Settings ***

Documentation     este arquivo contém dados que podem ser reutilizados.

Resource    ../main.robot

*** Keywords ***

Preencher dados
    [Arguments]    ${LOCATOR}   ${TEXT}
    Wait Until Element Is Visible    ${LOCATOR}    ${TIME}
    Input Text    ${LOCATOR}   ${TEXT}

Clicar elementos
    [Arguments]    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}    ${TIME}
    Click Element    ${lOCATOR}