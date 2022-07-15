*** Settings ***
Test Teardown     Run Keywords    Capture Page Screenshot    Close All Browsers
Library           SeleniumLibrary
Library           Collections
Resource          IDV_Keywords.txt
Library           String

*** Variables ***
${env_url}        https://uat-id.prodigylabs.net/dashboard

*** Test Cases ***
Copy API Key
    [Documentation]    *This TC is to test the Copy API Key functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Click View API Key button on API Keys List page
    Get API Key value from API Keys List
    Click Copy API Key button on API Keys List page
    Click Add API Key button
    Verify if the User is on Create API Keys page
    Comment    Insert API Name textbox    ${EMPTY}
    Paste the copied API Key value in API Name text box
    Sleep    1
    Compare Unmasked API Key with the Pasted API Key
    [Teardown]    Close All Browsers

*** Keywords ***
