*** Settings ***

Library               RequestsLibrary
Library    JsonLibrary
Library    Collections
#Library    urllib3    

*** Variables ***
${Base_URL}    http://simple-books-api.glitch.me

*** Test Cases ***

TC_Register
    Create Session    addData    ${Base_URL}    
    ${body}=    Create Dictionary    clientName=dennywidyatmoko    clientEmail=widywidy@gmail.com   
    ##${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    Post On Session    addData    /api-clients    data=${body}
    Log To Console    ${response.content}   
     #${actual_code}=    Convert To String    ${Response.status_code}
    #Should Be Equal    ${actual_code}    201 
    
TC_Get
    Create Session    get_status    ${Base_URL}    
  
    ${response}=    Get On Session    get_status    /status
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    
    Log To Console    ${response.headers}
