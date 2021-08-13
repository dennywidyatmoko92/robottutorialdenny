*** Settings ***
Library    SeleniumLibrary    
Variables    PageObjects/Locators.py

*** Variables ***

${login_url}    https://admin-demo.nopcommerce.com
${browser}    headlessfirefox

*** Keywords ***
buka browser
    Open Browser    ${login_url}    ${browser}
    Maximize Browser Window
    
tutup browser
    Close All Browsers

buka login page
    Go To    ${login_url}
    
input username
    [Arguments]    ${username}
    Input Text    ${txt_email}    ${username}    
    
input pwd
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}    
    
click login
    Click Element    ${btn_sign}  
    
error message should be visible
    Page Should Contain    Login was unsuccessful    
