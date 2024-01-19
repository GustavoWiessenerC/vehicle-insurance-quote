*** Settings ***
Resource    ../pages/actions/insurance-data-page.robot
Resource    ../pages/actions/price-option-page.robot
Resource    ../pages/actions/product-data-page.robot
Resource    ../pages/actions/vehicle-data-page.robot
Resource    ../pages/actions/send-quote-page.robot

*** Test Cases ***
Case - Vehicle Insurance Quote e2e
    Given Enter Vehicle Data
    When Enter Insurance Data
    And Enter Product Data
    And Select Price Option
    Then Send Quote

