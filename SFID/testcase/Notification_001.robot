*** Settings ***
Library    SeleniumLibrary    
Resource    ../resource.robot

*** Test Cases ***
Login
    login admin
    Wait Until Page Contains    Mitsubishi
    Input Text    locator    ${contoh} 
            

akses notifikasi
    Click Element    xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/ul[1]/div[3]/a[1]/li[1]/span[1]
    Set Selenium Implicit Wait    10    
   