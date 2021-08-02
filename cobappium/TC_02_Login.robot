*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    ../sbs.resource

*** Variables ***
${username}


*** Test Cases ***
login
    Open Application    http://localhost:4723/wd/hub    alias=Sebangsa    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    app=${ANDROID_APP}    autoGrantPermissions=${autoGrantPermissions}
    Wait Until Element Is Visible    com.sebangsa.arena:id/navigation_account
    Click Element    com.sebangsa.arena:id/navigation_account 
    # id=com.sebangsa.arena:id/btn_login
    Click Element    id=com.sebangsa.arena:id/btn_login
# id=com.sebangsa.arena:id/username
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/username    
    Input Text    id=com.sebangsa.arena:id/username    ${username}
    Log    ${username}        
# id=com.sebangsa.arena:id/password
    Input Text    id=com.sebangsa.arena:id/password    123456qwe
# id=com.sebangsa.arena:id/button_login
    Click Element    id=com.sebangsa.arena:id/button_login