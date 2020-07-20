**Settings***
Documentation       Aqui teremos palavras chaves de apoio

***Keywords***
Login Session
#Recebendo um argumento do tipo email para fazer o login
    [Arguments]     ${email}

    # importando a classe base e o variavel open session
    base.Open Session

    Go To   ${base_url}
    Input Text      ${CAMPO_EMAIL}    ${email}
    Click Element   ${BOTAO_ENTRAR}

    sleep   2
    Wait Until Page Contains Element       ${DIV_DASH}