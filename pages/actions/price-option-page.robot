*** Settings ***
Resource   ../pages-common.robot


*** Variables ***
${NEXT_SELECT_PRICE_OPTION}    id=nextselectpriceoption
${SELECT_GOLD}   selectgold
${NEXT_SEND_QUOTE}    id=nextsendquote

*** Keywords ***
Select Price Option
    pages-common.Clicar Element Next    ${NEXT_SELECT_PRICE_OPTION}
    pages-common.Clicar em Sim   ${SELECT_GOLD}
    Sleep   2s
    pages-common.Clicar Element Next    ${NEXT_SEND_QUOTE}