**Settings***
Documentation   Aqui temos a estrutura do projeto

Library     SeleniumLibrary
Resource    keywords.robot
Resource    helpers.robot
Resource    elements.robot

#refatorando para criar uma estrutra similar ao page object
**Variables***
${base_url}     http://ninjachef-qaninja-io.umbler.net/
${BROWSER}        chrome



***Keywords***
## hooks

Open Session
    Open Browser       about:blank    ${BROWSER}
    Maximize Browser Window
    

Close Session
    Close Browser