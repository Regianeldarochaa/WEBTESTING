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
    E a categoria "Livros em Oferta" deve ser exibida na página

caso de teste 02 - Pesquisa de um Produto
    [Documentation]        Teste para realizar busca
    ...                    no site da Amazon.com.br
    [Tags]                 busca_produtos        lista_busca
    
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
    
caso de teste 03 - Adicionar Produto no carrinho
    [Documentation]        Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]                 adicionar_carrinho

     Acessar a home page do site Amazon.com.br
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
    #  Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#      Adicionar o produto ""
#      Verifica se o produto " foi adicinado com sucesso"
   
#Caso de teste 04 - Remover Produto do Carrinho
    #   [Documentation]         Esse teste verifica a remoção de um produto do carrinho de compras
    #   [Tags]                  remover_carrinho

#      Acessar a home page do site Amazon.com.br
#      Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#      Clicar no botão de pesquisa
#      Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
#      Adicionar o produto ""
#      Verifica se o produto " foi adicinado com sucesso
  #    Remover o produto "" do carrinho
    #  Verificar se o carrinho fica vazio
    


   

                               