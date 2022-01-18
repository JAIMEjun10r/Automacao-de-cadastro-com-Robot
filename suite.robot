*** Settings ***
Documentation       Automação do Registro de Usuário
Resource        resources.robot

*** Test Cases ***
Caso de Teste 01: Criar uma conta no site  
    Abrir página do site da loja
    Maximizar a janela
    Clicar em sign in 
    Dar um scroll até aparecer o botão
    Clicar na caixa email address
    Preencher com o email
    Clicar no botão Create an account
    Clicar na opção Mr. em Title
    Dar um scroll
    Preencher os campos com informações pessoais
