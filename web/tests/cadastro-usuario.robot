***Settings***
Documentation   Suite dos Testes de Cadastro

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session


***Test Cases***
Cadastro Simplificado
    Dado que acesso a pagina principal
    Quando submeto o meu email "teste@gmail.com"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a pagina principal
    Quando submeto o meu email "joao$yahoo.com"
    Então devo ver a mensagem de erro "Oops. Informe um email válido!"

Email não informado
    Dado que acesso a pagina principal
    Quando submeto o meu email "${EMPTY}"
    Então devo ver a mensagem de erro "Oops. Informe um email válido!"




