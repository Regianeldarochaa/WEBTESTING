*** Settings ***
Library    OperatingSystem
Documentation        Suite para exemplificar o uso de IF nos testes
*** Variables ***
@{FRUTAS}  Maça  Banana  Uva  Abacate

*** Test Cases ***
Caso de teste 01
        Rodando uma Keywords dada uma condição = true
        Rodando uma Keyword dada uma condição = false
        Armazenando um valor em uma variavel dada uma condição

*** Keywords***
Rodando uma Keywords dada uma condição = true
      Run Keyword If   '${FRUTAS[1]}' == 'Banana'    Log   O intem numero 1 é Banana!
Rodando uma Keyword dada uma condição = false
    Run Keyword Unless   '${FRUTAS[1]}' == 'Maça'  Log  O intem numero 1 não é uma Maça!
 Armazenando um valor em uma variavel dada uma condição
     ${VAR}  Set Variable If    '${FRUTAS[2]}' == 'Uva'   Uva
     Log    Minha Variavel VAR é uma ${VAR}!  
   

