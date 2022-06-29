*** Settings ***
Documentation        Essa suite testa o site da Amazon.com.br
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador

*** Test Cases ***
 caso de teste 01 - Acesso ao menu "Livros"
    [Documentation]        Teste para validar acesso ao menu
    ...                    no site da Amazon.com.br
    [Tags]                 menus     categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Livros"
    Verificar se o título da página fica "Livros | Amazon.com.br"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se aparece a categoria "Livros em Oferta"

caso de teste 02 - Pesquisa de um Produto
    [Documentation]        Teste para realizar busca
    ...                    no site da Amazon.com.br
    [Tags]                 busca_produtos        lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    O sistema deve exibir a tela com o resultado da pesquisa, se está listando o produto "(//h2[contains(.,'Volante Logitech G920 Driving Force para Xbox Series X|S, Xbox One e PC')])[1]"



 
 