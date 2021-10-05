*** Settings ***
Force Tags        TUBII-5
Library           SeleniumLibrary
Resource          ette.resource
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Test Main menu main sections
    Go to main Page
    Click through sections

Search something from website
    Search for something

Change Language
    Go to main Page
    Change language to english

Test Etteplan link
    Navigate to about us 
    Click Etteplan logo