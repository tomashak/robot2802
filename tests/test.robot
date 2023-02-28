*** Settings ***
Documentation   Dokumentace cele suity, link, potrebna data, conflunce
Library         SeleniumLibrary
Library         ExcelRobot
Resource        ../resources/common.resource
Resource        ../resources/homePage.resource
Resource        ../resources/resultPage.resource
Test Setup      Start test
Test Teardown   Close All Browsers

*** Test Cases ***
ABC-123 Test1 - search - Top
    [Documentation]  Nejaky popis TC, link do jiry, autor, parametry uzivatel .....
    ...              druhy sdfsadsfasf
    [Tags]  smoke  regr  ABC-32
    Open Excel        data/input.xls
    ${pocet_radku}    Get Row Count  Sheet1
    FOR  ${radek}  IN RANGE  2  ${pocet_radku}+1
        ${coHledat}       Read Cell Data By Name  Sheet1  A${radek}
        ${coKontrolovat}  Read Cell Data By Name  Sheet1  B${radek}  
        Run Keyword And Continue On Failure  Vyhledej   ${coHledat}
        Run Keyword And Continue On Failure  Zkonroluj  ${coKontrolovat}
        Go To  ${URL}
    END
    

    
    