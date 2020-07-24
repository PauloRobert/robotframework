**Settings***
Documentation       Testes de login do NinjaChef

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***

Acessar o cardápio
    Dado que desejo comer "Massas"
    Quando submeto meu email "papito@qaninja.com.br"
    Entao devo ver a lista de pratos por tipo
    E faço logout