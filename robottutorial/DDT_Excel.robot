*** Settings ***
Library    SeleniumLibrary    
Resource    resource.resource
Library    DataDriver    file=LoginData.xlsx    sheet_name=Sheet1   
Suite Setup    buka browser
Suite Teardown    tutup browser
Test Template    invalid login

#pip install -U robotframework-datadriver[XLS] 

*** Variables ***
${username}
${password}
 
*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}    Default    UserData
    
#LoginTestWithExcel    ${username}    ${password}
 
    

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input pwd    ${password}
    click login
    error message should be visible
    