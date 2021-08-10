*** Settings ***
Library    RequestsLibrary    
Library    Collections    

*** Variables ***
${base_url}    https://simple-books-api.glitch.me
${city}    2

*** Test Cases ***
Get_weatherInfo
    Create Session    mysession    ${base_url}
    ${response} =    GET    ${base_url}/books/${city}
    Log To Console    ${response.status_code}    
    Log To Console    ${response.content}    
    Log To Console    ${response.headers}    
    
    ${status_code} =    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200   
    

    ${body}=    Convert To String    ${response.content}
    Should Contain    ${body}   Cicely Tyson    


    
    ${contentTypeValue}=    Get From Dictionary    ${response.headers}    Content-Type
    Should Be Equal    ${contentTypeValue}    application/json; charset=utf-8
    

           