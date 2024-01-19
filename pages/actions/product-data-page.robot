*** Settings ***
Resource   ../pages-common.robot

*** Variables ***
${START_DATE}    id=startdate
${INSURANCE_SUM}     id=insurancesum
${MERIT_RATING}     id=meritrating
${DAMAGE_INSURANCE}     id=damageinsurance
${EURO_PROTECTION}   EuroProtection
${COURTESY_CAR}   id=courtesycar

*** Keywords ***
Enter Product Data
    pages-common.Preencher Campo de Data    ${START_DATE}    10/04/2024 
    pages-common.Selecionar Opcao No Dropdown    ${INSURANCE_SUM}     10.000.000,00
    pages-common.Selecionar Opcao No Dropdown    ${MERIT_RATING}     Malus 12
    pages-common.Selecionar Opcao No Dropdown    ${DAMAGE_INSURANCE}     Partial Coverage
    pages-common.Clicar em Sim   ${EURO_PROTECTION}
    pages-common.Selecionar Opcao No Dropdown    ${COURTESY_CAR}   Yes