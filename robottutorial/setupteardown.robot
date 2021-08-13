*** Settings ***

Suite Setup    Log To Console    open browser    
Suite Teardown    Log To Console    close browser    

Test Setup    Log To Console    login dulu    
Test Teardown    Log To Console    logut dulu    

*** Keywords ***


*** Test Cases ***

komentar
    Log To Console    kirim komentar    
    
vote up
    Log To Console    vote up  
    