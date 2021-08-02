*** Settings ***
Library    AppiumLibrary    

*** Variables ***
${ANDROID_AUTOMATION_NAME}    MGMRK19109013419
${ANDROID_APP}                C:\\arena.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0.0
${autoGrantPermissions}    true
${packageActivity}    com.sebangsa.arena
${appActivity}    com.sebangsa.arena.ui.onboard.SplashActivity


*** Keywords ***
define activity
    Open Application    http://localhost:4723/wd/hub    alias=Arena    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    autoGrantPermissions=${autoGrantPermissions}    appPackage=${packageActivity}    appActivity=${appActivity}
    

define apps
    Open Application    http://localhost:4723/wd/hub    alias=Sebangsa    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    app=${ANDROID_APP}    autoGrantPermissions=${autoGrantPermissions}
    
login
    Open Application    http://localhost:4723/wd/hub    alias=Sebangsa    platformName=Android    platformVersion=10.0.0    deviceName=MGMRK19109013419    app=${ANDROID_APP}    autoGrantPermissions=${autoGrantPermissions}
    Wait Until Element Is Visible    com.sebangsa.arena:id/navigation_account
    Click Element    com.sebangsa.arena:id/navigation_account 
    # id=com.sebangsa.arena:id/btn_login
    Click Element    id=com.sebangsa.arena:id/btn_login
# id=com.sebangsa.arena:id/username
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/username    
    Input Text    id=com.sebangsa.arena:id/username    MekOCEKzvB    
# id=com.sebangsa.arena:id/password
    Input Text    id=com.sebangsa.arena:id/password    123456qwe
# id=com.sebangsa.arena:id/button_login
    Click Element    id=com.sebangsa.arena:id/button_login
   