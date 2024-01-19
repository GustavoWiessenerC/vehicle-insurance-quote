*** Settings ***
Resource  ../resources/resource.robot

*** Variables ***
${URL}           http://sampleapp.tricentis.com/101/app.php
${BROWSER}       chrome
${DRIVER_PATH}   exec/chromedriver.exe

*** Keywords ***
Acessar a pagina do Test
    Open Browser  ${URL}  ${BROWSER}  executable_path=${DRIVER_PATH}

Selecionar Opcao No Dropdown
    [Arguments]    ${locator}    ${opcao}
    Select From List by Label    ${locator}    ${opcao}

Escrever em Campo de Texto
    [Arguments]    ${locator}    ${text_to_type}
    Input Text    ${locator}    ${text_to_type}

Preencher Campo de Data
    [Arguments]    ${locator}    ${date}
    Input Text    ${locator}    ${date}

Clicar em Sim
    [Arguments]    ${locator}   
    Execute JavaScript    document.getElementById('${locator}').click()

Clicar Element Next
     [Arguments]    ${locator} 
      Click Element   ${locator} 

Escolher Arquivo
    [Arguments]    ${input_locator}    ${caminho_do_arquivo}
    Execute JavaScript    document.getElementById('${input_locator}').value='${caminho_do_arquivo}';

Aguardar Mensagem de Sucesso
    Wait Until Element Is Visible  xpath=//h2[text()='Sending e-mail success!']  timeout=20s
    ${success_message}=  Get Text  xpath=//h2[text()='Sending e-mail success!']
    Should Be Equal As Strings  ${success_message}  Sending e-mail success!    