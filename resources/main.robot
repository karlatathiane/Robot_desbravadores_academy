*** Settings ***
Documentation    este é o arquivo que contém a importação das libraries, keywords, pages, e variáveis.

Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_BR
Library    String
Library     OperatingSystem

Resource    keywords/login_kws.robot

Resource    pages/login_page.robot

Resource    data/credenciais_usuario.robot
Resource    data/variaveis_config.robot

Resource    utils/keywords_utils.robot