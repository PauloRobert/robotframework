**Settings***
Documentation   Palavras chaves de automação dos comportamentos

*** Variables ***
${LOGIN URL}       http://ninjachef-qaninja-io.umbler.net/ 
${BROWSER}        chrome

***Keywords***
Dado que acesso a pagina principal
    Go To       ${LOGIN URL}
    

Quando submeto o meu email "${email}"
    Input Text      id:email        ${email}
    Click Element   css:button[type=submit]
    Sleep   5

Então devo ser autenticado
    Wait Until Page Contains Element    class:dashboard
    Sleep   3