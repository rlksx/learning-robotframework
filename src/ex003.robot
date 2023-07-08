# ex002 + Usando XPath 
# //tag[indentificador="valor"]
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_name}            //input[@id="name"]
${input_phone}           //input[@id="phone"]
${input_email}           //input[@id="email"]
${input_password}        //input[@id="password"]
${textarea_address}      //textarea[@id="address"]
${button_submit}         //button[name="submit"]    

*** Keywords ***
Abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

Preencher campos
    Input Text     ${input_name}             Ryan Gabriel
    Input Text     ${input_phone}            47991579658
    Input Text     ${input_email}            ryan.exemplo@gmail.com
    Input Text     ${input_password}         senha12345
    Input Text     ${textarea_address}       Rua dos bobo numero zero

Clicar no Botão
    Click Button     ${input_name}

*** Test Cases ***
Cenario 1: Preencher formulario
    [Tags]    regressivo
    Abrir navegador e acessar site
    Preencher campos
    Clicar no Botão
    Close Browser
