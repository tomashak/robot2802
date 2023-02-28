*** Settings ***
Documentation  Dokumentace cele suity, link, potrebna data, conflunce
Library    SeleniumLibrary

*** Test Cases ***
ABC-123 Test1 - search
    [Documentation]  Nejaky popis TC, link do jiry, autor, parametry uzivatel .....
    ...              druhy sdfsadsfasf
    Open Browser  https://automationexercise.com/products  chrome
    Sleep  3s  #komentar radku
    Close All Browsers