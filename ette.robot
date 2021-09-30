*** Settings ***
Force Tags        TUBII-5
Library           SeleniumLibrary
Resource          ette.resource
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
*** Test Cases ***
Navigate
    [Tags]        TUBII-5
    Go to jobs
    Search for something

Change Language
    Go to main Page
    Change language to english
    