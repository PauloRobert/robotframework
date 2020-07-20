**Settings***
Documentation   Palavras chaves de automação dos comportamentos

*** Variables ***
${LOGIN URL}       ${base_url}


***Keywords***
Dado que acesso a pagina principal
    Go To       ${LOGIN URL}
    

Quando submeto o meu email "${email}"
    Input Text      ${CAMPO_EMAIL}        ${email}
    Click Element   ${BOTAO_ENTRAR}
    Capture Page Screenshot

Então devo ser autenticado
    Wait Until Page Contains Element    ${DIV_DASH}

Então devo ver a mensagem de erro "${expected_message}"
    Wait Until Element Contains         ${DIV_ALERT}     ${expected_message}

#Cadastro de produtos


Dado que "${produto}" é um dos meus pratos
        Set Test Variable       ${produto} 

Quando faço o cadastro desse item

    #Espera explicita do botão cadastrar
    Wait Until Element Is Visible       ${BOTAO_ADD}   5     
    Click Element       ${BOTAO_ADD}

    # fazendo o upload do Arquivo
    # usando a variavel EXECDIR para navegar entre as pastas
    # Concatenando com a variavel IMG do produtos.robot para o caso de Eu querer mudar a imagem
    Choose File         ${CAMPO_IMAGEM}    ${EXECDIR}/resources/images/${produto['img']}

    # Carrego o dicionário de valores da variável nhoque
    Input Text          ${CAMPO_NOME}      ${produto['nome']}
    input Text          ${CAMPO_TIPO}      ${produto['tipo']}
    Input Text          ${CAMPO_PRECO}     ${produto['preco']}
    Click Element       ${BOTAO_CADASTRAR}


Então devo ver este prato no meu dashboard
    #validação se o prato foi cadastrado de fato
    Wait Until Element Contains     ${CAMPO_LISTAPRODUTOS}      ${produto['nome']}