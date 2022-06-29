*** Settings ***
Documentation        Essa suite testa o site da Amazon.com.br
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***


    [Documentation]        Teste para validar acesso ao menu
    ...                    no site da Amazon.com.br
    [Tags]                 menus     categorias
 caso de teste 01 - Acesso ao menu "Livros"
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Livros"
    Então o título da página deve ficar "Livros | Amazon.com.br"
    E o texto "Loja de Livros" deve ser exibido na página
    # E a categoria "Livros em Oferta" deve ser exibida na página



   

                               