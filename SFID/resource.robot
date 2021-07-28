*** Settings ***
Library    SeleniumLibrary   
Library    String
as
as
as
as


*** Variables ***
${HeadlessBrowser}    Headless Chrome
${browser}    chrome
${URL}    https://e-net.mitsubishi-motors.co.id/MMKSI.CR.ServiceBooking/login.aspx
${skd}    1213121313
${user}    admin@sfid.com
${password}    P@ssw0rd.SFID1
${contoh}    variabel

*** Keywords ***
login admin
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/input[1]    ${user}    
    Input Password    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/div[1]/input[1]    ${password}    
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/div[1]/div[1]/button[1]/div[1]
    Wait Until Page Contains Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/nav[1]/div[2]/ul[2]/li[1]/form[1]/img[1]
    Element Should Contain    xpath=/html[1]/body[1]/div[1]/div[1]/div[2]/nav[2]/ul[2]/li[1]    Version 0.2.23                  