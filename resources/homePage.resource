*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${search_input_xpath}=   //input[@id="search_product"]
${search_btn_xpath}=     //button[@id="submit_search"]

*** Keywords ***
Vyhledej
    [Documentation]  co dela, jake argumenty ocekava
    [Arguments]  ${co_hledat}=Top
    Wait Until Element Is Visible  ${search_input_xpath}
    Capture Page Screenshot
    Input Text  ${search_input_xpath}    ${co_hledat}
    Click Element  ${search_btn_xpath}
    #test
