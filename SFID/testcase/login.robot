*** Settings ***
Library    SeleniumLibrary    
Resource    ../resource.robot

*** Test Cases ***
login
    login admin
    Close Browser