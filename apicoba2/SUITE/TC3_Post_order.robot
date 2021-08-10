*** Settings ***                                                                                       
Library    Collections                                                                                 
Library    RequestsLibrary                 
Library    String                                                                
                                                                                                                           
                                                                                                       
*** Variables ***
${token}
${base_url}    https://simple-books-api.glitch.me

*** Test Cases ***


order
      
    Create Session    mysession    ${base_url}
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}    
    ${email} =    Generate Random String    5    [LETTERS]                                                                    
    &{data}=    Create dictionary  bookId=1  customerName=${email}    
    ${resp}=    POST On Session    mysession  /orders    json=${data}    headers=${headers}   
    Log To Console    ${resp.content}      
    ${resp_body}=    Convert To String    ${resp.content}
    ${status_code} =    Convert To String    ${resp.status_code}
    Should Be Equal    ${status_code}    201  
    Log To Console    ${token}  
    Log To Console    ${email} 
    ${orderId}=    Convert To String    ${resp.json()}[orderId]      
    Log To Console    ${orderId}    
    Set Global Variable    ${orderId}     
    