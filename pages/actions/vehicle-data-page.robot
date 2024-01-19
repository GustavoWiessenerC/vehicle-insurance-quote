*** Settings ***
Resource   ../pages-common.robot

*** Variables ***
${MAKE_DROPDOWN}    id=make
${MODEL_DROPDOWN}   id=model
${CYLINDER_CAPACITY}    id=cylindercapacity
${ENGINE_PERFORMANCE}   id=engineperformance
${NUMBER_OF_SEATS}    id=numberofseats
${NUMBER_OF_SEATS_MOTORCYCLE}    id=numberofseatsmotorcycle
${DATE_OF_MANUFACTURE}    id=dateofmanufacture
${RIGHT_HAND_DRIVE_YES}   righthanddriveyes
${FUEL}    id=fuel
${PAYLOAD}    id=payload
${TOTAL_WEIGHT}    id=totalweight
${LIST_PRICE}    id=listprice
${LICENSE_PLATE_NUMBER}    id=licenseplatenumber
${ANNUAL_MILEAGE}    id=annualmileage
${NEXT_ENTER_INSURANT_DATA}    id=nextenterinsurantdata

*** Keywords ***
Enter Vehicle Data
    pages-common.Acessar a pagina do Test
    pages-common.Selecionar Opcao No Dropdown    ${MAKE_DROPDOWN}    Audi
    pages-common.Selecionar Opcao No Dropdown    ${MODEL_DROPDOWN}   Moped
    pages-common.Escrever em Campo de Texto    ${CYLINDER_CAPACITY}   20
    pages-common.Escrever em Campo de Texto    ${CYLINDER_CAPACITY}   20
    pages-common.Preencher Campo de Data    ${ENGINE_PERFORMANCE}   200
    pages-common.Selecionar Opcao No Dropdown    ${NUMBER_OF_SEATS}    2
    pages-common.Selecionar Opcao No Dropdown    ${NUMBER_OF_SEATS_MOTORCYCLE}    2
    pages-common.Preencher Campo de Data    ${DATE_OF_MANUFACTURE}    01/03/2024 
    pages-common.Clicar em Sim   ${RIGHT_HAND_DRIVE_YES}
    pages-common.Selecionar Opcao No Dropdown    ${FUEL}    Diesel    
    pages-common.Escrever em Campo de Texto    ${PAYLOAD}    100
    pages-common.Escrever em Campo de Texto    ${TOTAL_WEIGHT}    200
    pages-common.Escrever em Campo de Texto    ${LIST_PRICE}    6000
    pages-common.Escrever em Campo de Texto    ${LICENSE_PLATE_NUMBER}    15
    pages-common.Escrever em Campo de Texto    ${ANNUAL_MILEAGE}    280
    pages-common.Clicar Element Next    ${NEXT_ENTER_INSURANT_DATA}
    Sleep   5s
