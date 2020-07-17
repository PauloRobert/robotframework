**Settings***
Documentation   Aqui temos a estrutura do projeto

Library     SeleniumLibrary
Resource    keywords.robot

***Keywords***
## hooks

Open Session
    Open Browser       about:blank    ${BROWSER}
    Maximize Browser Window

Close Session
    Close Browser