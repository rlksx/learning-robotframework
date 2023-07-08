*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir navegador e acessar site google
    Open Browser    https://www.google.com/    chrome
    
Abrir navegador e acessar site youtube
    Open Browser    https://www.youtube.com/    chrome

*** Test Cases ***
Cenario 1: 
    [Tags]    regressivo
    Abrir navegador e acessar site google

Cenario 2:
    Abrir navegador e acessar site youtube

# executando diferentes cenarios 
    # robot -d results -t "Cenario 1:" arquivo.robot