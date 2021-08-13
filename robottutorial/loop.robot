*** Settings ***
*** Variables ***

*** Test Cases ***
Loop Over A List Of Items And Log Each Of Them
    FOR    ${robot}    IN RANGE    -1    10
        Log To Console    ${robot}
    END
    

Loop Over 
    FOR    ${robot}    IN    1 2 3 4 5
        Log To Console    ${robot}
    END
    
Loop Over3 
    @{item}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{item}
        Log To Console    ${i}    
    END
    
loop4
    FOR    ${I}    IN    John    smith    scott    
        Log To Console    ${i}    
    END
    
    
loop5
    @{namelist}    Create List    John    smith    scott        
    FOR    ${I}    IN    @{namelist}    
        Log To Console    ${i}    
    END
    
forloop6
    @{item}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{item}
        Log To Console    ${i}   
        Exit For Loop If    ${i}==3
        
    END
