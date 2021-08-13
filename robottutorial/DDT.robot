*** Settings ***
Library    SeleniumLibrary    
Resource    resource.resource
Suite Setup    buka browser
Suite Teardown    tutup browser
Test Template    invalid login

*** Test Cases ***                        username    password
Right user empty pass    admin@yourstore.com    ${EMPTY}
Right user wrong pass    admin@yourstore.com    password
Rigth user right pass    admin@yourstore.com    admin
        
    

*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input pwd    ${password}
    click login
    error message should be visible
    

