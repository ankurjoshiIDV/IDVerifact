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
Delete API Key
    [Documentation]    *This TC is to test the Delete API Key functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    50
    Get API Keys Count
    Delete selected API Keys

Delete multiple API Keys
    [Documentation]    *This TC is to test the Delete API Key functionality.*
    [Tags]    No Run
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    50
    Get API Keys Count
    Deleted multilple selected API Keys
    Change the number of API Keys displayed    50
    Get API Keys Count
    Should Be Equal as Integers    ${oldAPIKeys_count}    ${APIKeys_count}

*** Keywords ***
