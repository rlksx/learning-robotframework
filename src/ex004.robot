*** Settings ***
Library   SeleniumLibrary

*** Variables ***
# Elementos
${input_pesquisa}        //input[@id="search"]
${button_search}         //button[@id="search-icon-legacy"]
${yt_video}              (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${button_share}          (//button[@aria-label="Compartilhar"])[2]

# Dados do teste
${nome_musica}           KILLSTATION - EXTINCTION        

*** Keywords ***
acesse o site do youtube
    Open Browser         https://www.youtube.com/        chrome

eu digito o nome da musica
    Input Text          ${input_pesquisa}        ${nome_musica}

clicar no botão de busca
    Click Button        ${button_search}   

clica no primeiro video
    Wait Until Element Is Visible    ${yt_video}    10
    Click Element       ${yt_video}

video é executado
    Wait Until Element Is Visible    ${button_share}    10
    Element Should Be Visible    ${button_share}

*** Test Cases ***
Given        acesse o site do youtube
When         eu digito o nome da musica
And          clicar no botão de busca
And          clica no primeiro video
Then         video é executado
    