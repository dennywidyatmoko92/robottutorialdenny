*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
TC1 user registration
    [Tags]    regression
    Log To Console    this is user registration
    Log To Console    user registration test is over    
    
TC2 Login test
    [Tags]    sanity
    Log To Console    this is login test    
    Log To Console    login test is over    
    
TC3 change user setting
    [Tags]    regression
    Log To Console    this is changing user setting test    
    Log To Console    change user setting is over    
    
TC4 Logout Test
    [Tags]    sanity
    Log To Console    this is logout test    
    Log To Console    logout test is over    
    
# how to run
#robot --include=sanity tagging.robot   
#robot -i sanity -i regression tagging.robot
#robot -e regression tagging.robot