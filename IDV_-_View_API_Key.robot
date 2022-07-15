*** Settings ***
Suite Teardown    Run Keywords    Capture Page Screenshot    Close All Browsers
Test Teardown     Run Keywords    Capture Page Screenshot    Close All Browsers
Library           SeleniumLibrary
Library           Collections
Resource          IDV_Keywords.txt
Library           String

*** Variables ***
${env_url}        https://uat-id.prodigylabs.net/dashboard

*** Test Cases ***
View API Key
    [Documentation]    *This TC is to test the current View API Key functionality using API Name column.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Verify if the API Key is Masked
    Click View API Key button on API Keys List page
    Verify if the API Key is Unmasked

*** Keywords ***
