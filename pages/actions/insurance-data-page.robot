*** Settings ***
Resource   ../pages-common.robot


*** Variables ***
${FIRSTNAME}    id=firstname
${LASTNAME}    id=lastname
${BIRTHDATE}    id=birthdate
${GENDER_MALE}   gendermale
${STREET_ADDRESS}    id=streetaddress
${COUNTRY}    id=country
${ZIPCODE}    id=zipcode
${CITY}   id=city
${OCCUPATION}    id=occupation
${SPEEDING}   speeding
${CLIFFDIVING}   cliffdiving
${WEBSITE}   id=website
${PICTURE}   picture
${NEXT_ENTER_PRODUCT_DATA}    id=nextenterproductdata


*** Keywords ***
Enter Insurance Data
    pages-common.Escrever em Campo de Texto    ${FIRSTNAME}    Gustavo
    pages-common.Escrever em Campo de Texto    ${LASTNAME}    Castilho
    pages-common.Preencher Campo de Data    ${BIRTHDATE}    11/03/1997
    pages-common.Clicar em Sim   ${GENDER_MALE}
    pages-common.Escrever em Campo de Texto    ${STREET_ADDRESS}    Rua Rio Cachoeira
    pages-common.Selecionar Opcao No Dropdown    ${COUNTRY}    Brazil
    pages-common.Escrever em Campo de Texto    ${ZIPCODE}    83322260
    pages-common.Escrever em Campo de Texto    ${CITY}   Pinhais
    pages-common.Selecionar Opcao No Dropdown    ${OCCUPATION}    Farmer
    pages-common.Clicar em Sim   ${SPEEDING}
    pages-common.Clicar em Sim   ${CLIFFDIVING}
    pages-common.Escrever em Campo de Texto    ${WEBSITE}   https://github.com/GustavoWiessenerC
    pages-common.Escolher Arquivo   ${PICTURE}  archives/perfil.jpeg
    Sleep   2s
    pages-common.Clicar Element Next    ${NEXT_ENTER_PRODUCT_DATA}

