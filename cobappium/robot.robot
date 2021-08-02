*** Settings ***
Library    AppiumLibrary    
Library    String    

*** Variables ***
${ANDROID_AUTOMATION_NAME}    MGMRK19109013419
${ANDROID_APP}                C:\\.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0.0

*** Test Cases ***
buka aplikasi
    Open Application    http://localhost:4723/wd/hub    alias=Sebangsa    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    app=${ANDROID_APP}
    Sleep    2    
    Swipe    968    1075    134    1128
    # id=com.sebangsa.sebangsa:id/btnLoginSebangsa
    Sleep    2   
    Click Element    id=com.sebangsa.sebangsa:id/btnLoginSebangsa
# id=com.sebangsa.sebangsa:id/edLoginUsername
    Sleep    2   
    ${username} =     Generate Random String    10    [LETTERS]
    Input Text    id=com.sebangsa.sebangsa:id/edLoginUsername    ${username}
# id=com.sebangsa.sebangsa:id/edLoginPasswd
    Sleep    2   
    Input Text    id=com.sebangsa.sebangsa:id/edLoginPasswd    123456
# id=com.sebangsa.sebangsa:id/btnLoginLogin
    Sleep    2   
    Click Element    id=com.sebangsa.sebangsa:id/btnLoginLogin
    Sleep    3    
    Close Application
           
      