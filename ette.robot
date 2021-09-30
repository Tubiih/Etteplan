*** Settings ***
Force Tags        TUBII-5
Library           SeleniumLibrary
Resource          ette.resource
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Search for a job
    Go to jobs

Search something from website
    Search for something

Change Language
    Go to main Page
    Change language to english

Go to contacts
    Open contacts window