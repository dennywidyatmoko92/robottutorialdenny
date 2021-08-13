*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
getlinktext
    Open Browser    https://twitter.com/    headlessfirefox
    Maximize Browser Window
    

    ${alllinkcount}=    Get Element Count    xpath=//a
    Log To Console    ${alllinkcount}    
    
    @{linkitems}    Create List    
    FOR    ${i}    IN RANGE    1    ${alllinkcount}
        ${linkteks}=    Get Text    xpath=(//a)[${i}]
        Log To Console    ${linkteks}    
    END