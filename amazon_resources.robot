*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}                       https://www.amazon.com.br
${Menu_MAIS_VENDIDOS}        xpath=(//a[contains(.,'Mais Vendidos')])[1]
${Menu_Livros}               xpath=(//a[contains(@href,'books')])[1]
${Texto_Pagina_Livros}       Loja de Livros
${Titulo}                    xpath=//title[contains(.,'Livros | Amazon.com.br')]
${NOME_CATEGORIA}            xpath=(//img[contains(@alt,'Livros em Oferta')])[1]
                
*** Keywords ***
Abrir o navegador
     Open Browser    browser=chrome
     Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${Menu_MAIS_VENDIDOS}


Entrar no menu "Livros"
     Wait Until Element Is Visible    locator=${Menu_Livros} 
     Click Element    locator=${Menu_Livros} 



Verificar se aparece a frase "Loja de Livros"
     Wait Until Page Contains    text=${Texto_Pagina_Livros} 


Verificar se o título da página fica "${Titulo}"
    Title Should Be        title=${Titulo}

    
Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=${NOME_CATEGORIA}

Digitar o nome de produto "${Produto}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${Produto}

Clicar no botão de pesquisa   
    Click Element    locator=nav-search-submit-button

O sistema deve exibir a tela com o resultado da pesquisa, se está listando o produto "${Prodto}"
   Wait Until Element Is Visible    locator=(//h2[contains(.,'Volante Logitech G920 Driving Force para Xbox Series X|S, Xbox One e PC')])[1]
# Gherkin STEPS 
 Dado que estou na home page da Amazon.com.br  
    Acessar a home page do site Amazon.com.br
   

Quando acessar o menu "Livros"
    Entrar no menu "Livros"

Então o título da página deve ficar "Livros | Amazon.com.br"
     Verificar se o título da página fica "Livros | Amazon.com.br"

E o texto "Loja de Livros" deve ser exibido na página
      Verificar se aparece a frase "Loja de Livros"

E a categoria "Livros em Oferta" deve ser exibida na página
     Verificar se aparece a categoria "Livros em Oferta"
 
Quando pesquisar pelo produto "Xbox Series S"
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
     O sistema deve exibir a tela com o resultado da pesquisa, se está listando o produto "(//h2[contains(.,'Volante Logitech G920 Driving Force para Xbox Series X|S, Xbox One e PC')])[1]"


