*** Settings ***
Documentation        Essa suite testa o site da Amazon.com.br
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
#  caso de teste 01 - Acesso ao menu "Livros"
#     [Documentation]        Teste para validar acesso ao menu
#     ...                    no site da Amazon.com.br
#     [Tags]                 menus     categorias
#     Acessar a home page do site Amazon.com.br
#     Entrar no menu "Livros"
#     Verificar se o título da página fica "Livros | Amazon.com.br"
#     Verificar se aparece a frase "Loja de Livros"
#     Verificar se aparece a categoria "Livros em Oferta"




 
 