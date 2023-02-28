*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${h2_title_xpath}=       //h2[contains(@class,"title")]  #nadpis
${product_title_xpath}=  (//div[@class="col-sm-4"]//div[@class="single-products"])[2]/div[contains(@class,"productinfo")]//p

*** Keywords ***
Zkonroluj
    [Documentation]   kontroluje, ze je vstup na URL a v druhem produktu
    [Arguments]  ${co_kontrolovat}
    Wait Until Element Does Not Contain  ${h2_title_xpath}  ALL PRODUCTS
    Wait Until Element Contains  ${h2_title_xpath}  SEARCHED PRODUCTS
    Location Should Contain  search=${co_kontrolovat}
    Element Should Contain  ${product_title_xpath}   ${co_kontrolovat}