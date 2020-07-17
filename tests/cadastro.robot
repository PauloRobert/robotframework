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





