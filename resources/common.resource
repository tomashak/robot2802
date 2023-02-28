*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}=      https://automationexercise.com/products
${BROWSER}=  chrome

*** Keywords ***
Start test
    [Documentation]  Dokumentace start test, co dela
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window