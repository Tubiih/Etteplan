*** Settings ***
Library           SeleniumLibrary
Resource          ette.resource
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Test Main menu main sections
    [Tags]    XRAYT-12
    Go to main Page
    Click through sections
    
Search something from website
    [Tags]    XRAYT-7
    Search for something

Change Language
    [Tags]    XRAYT-11
    Go to main Page
    Change language to english

Test Etteplan link
    [Tags]    XRAYT-6
    Navigate to about us 
    Click Etteplan logo
    