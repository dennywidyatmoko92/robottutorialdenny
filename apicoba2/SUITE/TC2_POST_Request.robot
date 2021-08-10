*** Settings ***                                                                                       
Library    Collections                                                                                 
Library    RequestsLibrary                 
Library    String                                                                
                                                                                                       
Suite Setup    Create Session  jsonplaceholder  https://simple-books-api.glitch.me                   


*** Variables ***
${base_url}    https://simple-books-api.glitch.me 
${bearertoken}    Bearer c41abc014b3a92cc6077b37535f72777ac209c4a22a81e6a5a733fe68208a7dc                          
                                                                              
*** Test Cases ***                                                                                     
                                                                                             
Post Request Test          
    ${username} =    Generate Random String    10    [LETTERS]    
    ${email} =    Generate Random String    10    [LETTERS]                                                                    
    &{data}=    Create dictionary  clientName=${username}  clientEmail=${email}@mailinator.com
    ${resp}=    POST On Session    jsonplaceholder  /api-clients/    json=${data} 
    Log To Console    ${resp.content}    
    Log To Console    ${username}    
    Log To Console    ${email}    
    ${resp_body}=    Convert To String    ${resp.content}
    Should Contain    ${resp_body}    accessToken  
    ${token}=    Convert To String    ${resp.json()}[accessToken]
    Log To Console    ${token}
    Set Global Variable    ${token}                                                                                 
    Status Should Be                 201  ${resp}
     


    #Create Session    mysession    ${base_url}
    #${headers}=    Create Dictionary    Authorization=Bearer ${token}    
    #${email} =    Generate Random String    5    [LETTERS]                                                                    
    #&{data}=    Create dictionary  bookId=1  customerName=${email}    
    #${resp}=    POST On Session    mysession  /orders    json=${data}    headers=${headers}   
    #Log To Console    ${resp.content}      
    #${resp_body}=    Convert To String    ${resp.content}
    #${status_code} =    Convert To String    ${resp.status_code}
    #Should Be Equal    ${status_code}    201  
    
                 