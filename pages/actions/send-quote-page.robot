*** Settings ***
Resource   ../pages-common.robot


*** Variables ***
${EMAIL}   id=email
${PHONE}   id=phone
${USERNAME}   id=username
${PASSWORD}   id=password
${CONFIRM_PASSWORD}   id=confirmpassword
${COMMENTS}   id=Comments
${SEND_EMAIL}    id=sendemail

*** Keywords ***
Send Quote
    pages-common.Escrever em Campo de Texto    ${EMAIL}   teste@teste.com
    pages-common.Escrever em Campo de Texto    ${PHONE}   999999999
    pages-common.Escrever em Campo de Texto    ${USERNAME}   Gustavo
    pages-common.Escrever em Campo de Texto    ${PASSWORD}   Gus2023
    pages-common.Escrever em Campo de Texto    ${CONFIRM_PASSWORD}  Gus2023   
    pages-common.Escrever em Campo de Texto    ${COMMENTS}   Comment in my user test
    pages-common.Clicar Element Next    ${SEND_EMAIL}
    pages-common.Aguardar Mensagem de Sucesso