*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${URL}         http://automationpractice.com/index.php      

*** Keywords  ***
Abrir página do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}

Maximizar a janela
    Maximize Browser Window
Clicar em sign in
    Click Element       xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
Dar um scroll até aparecer o botão
    Scroll Element Into View       xpath=//*[@id="SubmitCreate"]/span 
Clicar na caixa email address
    Click Element       //*[@id="email_create"]       
Preencher com o email
    Input Text          xpath=//*[@id="email_create"]               jatataja@gmail.com
    Sleep       4s
Clicar no botão Create an account
    Click Element            xpath=//*[@id="SubmitCreate"]/span
    Sleep       4s
Clicar na opção Mr. em Title
    Click Element       id=id_gender1
Dar um scroll
    Scroll Element Into View        xpath=//*[@id="account-creation_form"]/div[2]/h3
    Sleep           1s
Preencher os campos com informações pessoais    
    Input Text       xpath=//*[@id="customer_firstname"]        Kleber
    Input Text      xpath=//*[@id="customer_lastname"]          Krebinho
    Input Text      xpath=//*[@id="passwd"]             123456
    Sleep       1s
    Click Element         xpath=//*[@id="days"]
    Click Element          xpath=//*[@id="days"]/option[6]
    Sleep           0.8s
    Click Element          xpath=//*[@id="months"]
    Click Element          xpath=//*[@id="months"]/option[4]  
    Sleep           0.8s 
    Click Element          xpath=//*[@id="years"]
    Click Element          xpath=//*[@id="years"]/option[34] 
    Sleep           1s
    Scroll Element Into View       //*[@id="account-creation_form"]/div[2]/p[10]/label 
    Sleep       1
    Input Text          xpath=//*[@id="company"]        AlfacecomTomate
    Sleep       0.8
    Input Text          xpath=//*[@id="address1"]       2460 Black Oak Hollow Road
    Input Text          xpath=//*[@id="address2"]       Unit 3
    Sleep       0.5
    Input Text          xpath=//*[@id="city"]       Nova York
    Sleep       0.5
    Click Element       xpath=//*[@id="id_state"]
    Click Element       xpath=//*[@id="id_state"]/option[34]
    Sleep       0.5
    Input Text          xpath=//*[@id="postcode"]           10001
    Input Text          xpath=//*[@id="phone"]          +1 845-326-5300
    Sleep       0.5
    Input Text          xpath=//*[@id="alias"]          BiluBilu
    Sleep       0.5
    Click Element        xpath=//*[@id="submitAccount"]/span