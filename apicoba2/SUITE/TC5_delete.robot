*** Settings ***                                                                                       
Library    Collections                                                                                 
Library    RequestsLibrary                 
Library    String                                                                
                                                                                                                           
                                                                                                       
*** Variables ***
${token}
${base_url}    https://simple-books-api.glitch.me
${orderId} 
*** Test Cases ***


order
      
    Create Session    mysession    ${base_url}
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}    
    ${email} =    Generate Random String    5    [LETTERS]                                                                    
    &{data}=    Create dictionary  customerName=edit${email}    
    ${resp}=    Delete On Session    mysession  /orders/${orderId}    headers=${headers}   
    Log To Console    ${resp.content}      
    ${resp_body}=    Convert To String    ${resp.content}
    ${status_code} =    Convert To String    ${resp.status_code}
    Should Be Equal    ${status_code}    204  