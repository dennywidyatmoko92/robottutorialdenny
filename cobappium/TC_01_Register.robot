*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    ../sbs.resource

*** Variables ***


*** Test Cases ***
register
    define apps
    # accessibility id=Account
    Wait Until Element Is Visible    com.sebangsa.arena:id/navigation_account
    Click Element    com.sebangsa.arena:id/navigation_account    
# id=com.sebangsa.arena:id/btn_register
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/btn_register    
    Click Element    id=com.sebangsa.arena:id/btn_register
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/username    
# id=com.sebangsa.arena:id/username
    ${username} =    Generate Random String    10    [LETTERS]  
    ${email} =    Generate Random String    10    [LETTERS]
    Set Global Variable    ${username}
    Input Text    id=com.sebangsa.arena:id/username    ${username}
# id=com.sebangsa.arena:id/email
    Input Text    id=com.sebangsa.arena:id/email    ${email}@mailinator.com
# id=com.sebangsa.arena:id/password
    Input Text    id=com.sebangsa.arena:id/password    123456qwe
    Click Element    id=com.sebangsa.arena:id/button_register
    
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/action_positif
    # id=com.sebangsa.arena:id/action_positif
    Click Element    id=com.sebangsa.arena:id/action_positif
# id=com.sebangsa.arena:id/gender
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/gender  
    Click Element    id=com.sebangsa.arena:id/gender  
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]
     # id=com.sebangsa.arena:id/action_save
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/action_save    
    Click Element    id=com.sebangsa.arena:id/action_save
# accessibility id=Account
    Wait Until Element Is Visible    com.sebangsa.arena:id/navigation_account
    Click Element    com.sebangsa.arena:id/navigation_account
    ${username} =    Get Text    id=com.sebangsa.arena:id/name
    Element Text Should Be    id=com.sebangsa.arena:id/name    ${username} 
    log    ${username}       
# id=com.sebangsa.arena:id/name

    
    #Input Text    id=com.sebangsa.arena:id/gender    Male
   # ${input_value}   get element attribute    id=com.sebangsa.arena:id/gender      Male
    #${input_name}   get element attribute     id=com.sebangsa.arena:id/gender      name
    Sleep    3    
    Close Application
