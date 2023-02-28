*** Settings ***
Documentation  Dokumentace cele suity, link, potrebna data, conflunce
Library    SeleniumLibrary

*** Test Cases ***
ABC-123 Test1 - search
    [Documentation]  Nejaky popis TC, link do jiry, autor, parametry uzivatel .....
    ...              druhy sdfsadsfasf
    Open Browser  https://automationexercise.com/products  chrome
    Maximize Browser Window
    Wait Until Element Is Visible  //input[@id="search_product"]
    Capture Page Screenshot
    Input Text  //input[@id="search_product"]    Top
    Click Element  //button[@id="submit_search"]
    Wait Until Element Does Not Contain  //h2[contains(@class,"title")]  ALL PRODUCTS
    Wait Until Element Contains  //h2[contains(@class,"title")]  SEARCHED PRODUCTS
    Location Should Contain  search=Top
    Element Should Contain  (//div[@class="col-sm-4"]//div[@class="single-products"])[2]/div[contains(@class,"productinfo")]//p   Top
    Close All Browsers