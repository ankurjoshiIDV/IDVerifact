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
Edit API Key on Digital Identity APIs Page
    [Documentation]    *This TC is to test the Edit API Key functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Click Edit API Key button on API List page
    ${status}    Run Keyword And Return Status    Location Should Contain    api-flow
    Run Keyword If    "${status}" == "True"    Capture Page Screenshot    API Key Edit page.png
    ...    ELSE    FAIL    EDIT KEY IS UNRESPONSIVE.

Edit API Key on In Progress APIs Page
    [Documentation]    *This TC is to test the Edit API Key functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on In Progress API Keys page
    Click Edit API Key button on API List page
    ${status}    Run Keyword And Return Status    Location Should Contain    api-flow
    Run Keyword If    "${status}" == "True"    Capture Page Screenshot    API Key Edit page.png
    ...    ELSE    FAIL    EDIT KEY IS UNRESPONSIVE.

*** Keywords ***
