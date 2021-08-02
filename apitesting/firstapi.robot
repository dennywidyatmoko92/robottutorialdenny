*** Settings ***
Library               RequestsLibrary
Library    JsonLibrary
Library    Collections

*** Variables ***
${Base_URL}    http://thetestingworldapi.com/
${Student_ID}    28


*** Test Cases ***
TC_GET
    Create Session    get_student    ${Base_URL}    
  
    ${response}=    Get On Session    get_student    api/studentsDetails 
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}    
    Log To Console    ${response.headers}

    

TC_verify
    Create Session    FetchData    ${Base_URL}    
    ${Response}=    Get On Session    FetchData    api/studentsDetails/${Student_ID}
    ${actual_code}=    Convert To String    ${Response.status_code}
    Should Be Equal    ${actual_code}    200
    
TC_post
    Create Session    addData    ${Base_URL}
    ${body}=    Create Dictionary    first_name=denny    middle_name=widyatmoko    last_name=widy    date_of_birth=12/12/1990   
    ##${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    Post On Session    addData    /api/studentsDetails    data=${body}
    Log To Console    ${response.content}   
     ${actual_code}=    Convert To String    ${Response.status_code}
    Should Be Equal    ${actual_code}    201 
    
TC_delete
    Create Session    AppAccess    ${Base_URL}    
    ${response}=    Delete On Session    AppAccess    api/studentsDetails/11
    ${code}=      Convert To String    ${response.status.code}      
    Should Be Equal    ${code}    200    
    ${jsonresponse}=   To Json    ${response.content}            
    ${status_list}=    Get Value From Json    ${jsonresponse}    status
    ${status}=    Get From List    ${status_list}    0
    Should Be Equal    ${status}    true        

  
TC_update
    Create Session    AddData    ${Base_URL}    
    &{body}=    Create Dictionary    id=214765    first_name=embuh    middle_name=widyatmoko    last_name=widy    date_of_birth=12/12/1990    
    #${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    Put On Session    AddData    /api/studentsDetails/214765    data=${body}
    log to console    ${response.status_code}
    Log To Console    ${response.content}  
    ${response1}=    Get On Session    AddData    /api/studentsDetails/214765
    log to console    ${response1.content}
    
#TC_weatherinfo
#    Create Session     myssion    ${URL}    
#    ${response}=    Get On Session    myssion    /utilities/weather/city/${city}
#    Log To Console    ${response.status_code}
#    Log To Console    ${response.content}    
#    Log To Console    ${response.headers}
#    ${body}=    Convert To String    ${response.content}
#    Should Contain    ${body}    Delhi    
    


    
       
     
    

    

    
