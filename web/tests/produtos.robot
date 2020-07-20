***Settings***

Documentation   Cadastro de produtos/pratos
...             Sendo um cozinheiro amador
...             Quero cadastrar meus melhores pratos
...             Para que Eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

# Utilizando o helpers.robot
Test Setup      Login Session  teste@gmail.com
Test Teardown   Close Session


***Variables***
#Variaveis com chave e valor chama-se dicionarios
&{nhoque}=      img=nhoque.jpg  nome=nhoque molho paprica   tipo=massas     preco=20.00

**Test Cases***
Novo prato
        Dado que "${nhoque}" é um dos meus pratos
        Quando faço o cadastro desse item
        Então devo ver este prato no meu dashboard