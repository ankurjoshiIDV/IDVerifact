*** Settings ***
Suite Teardown    Run Keywords    Capture Page Screenshot    Close All Browsers
Test Teardown     Run Keywords    Capture Page Screenshot    Close All Browsers
Library           SeleniumLibrary
Library           Collections
Resource          IDV_Keywords.txt
Library           String
Library           DateTime

*** Variables ***
${run_iteration}    2
${env_url}        https://uat-id.prodigylabs.net/dashboard

*** Test Cases ***
Create API Key_End to End
    [Documentation]    *THIS TC IS TO TEST THE CREATE NEW API FLOW.*
    Comment    Input number of browsers to be tested with
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection
    Input Pricing Review Selection
    Input Testing API Selection
    Input Testing Results Selection
    Input Production API Selection
    Verify if the User is redirected to API Keys page from Create API Keys page

Create API Key_Industry Selection
    [Documentation]    *THIS TC IS TO TEST THE INDUSTRY STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown

Create API Key_Geography Selection
    [Documentation]    *THIS TC IS TO TEST THE GEOGRAPHY STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada

Create API Key_Common Use Cases - No Selection_Error Message
    [Documentation]    *THIS TC IS TO TEST THE COMMON USE CASES STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - No Selection
    ${status}    Run Keyword And Return Status    Page Should Contain Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div[2]/div[2]/p    #Empty Common Use Case radio button Error Message
    Run Keyword If    "${status}" == "True"    Page Should Contain    Please select a use case.

Create API Key_Identity Validation Method Selection
    [Documentation]    *THIS TC IS TO TEST THE IDENTITY VALIDATION METHOD STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox

Create API Key_Identity Related Data Capture Selection
    [Documentation]    *THIS TC IS TO TEST THE IDENTITY RELATED DATA CAPTURE STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox

Create API Key_Consent Capture Method Selection
    [Documentation]    *THIS TC IS TO TEST THE CONSENT CAPTURE METHOD STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection

Create API Key_Pricing Review
    [Documentation]    *THIS TC IS TO TEST THE PRICING REVIEW STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection
    Input Pricing Review Selection

Create API Key_Testing API
    [Documentation]    *THIS TC IS TO TEST THE TESTING API STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection
    Input Pricing Review Selection
    Input Testing API Selection

Create API Key_Testing Results
    [Documentation]    *THIS TC IS TO TEST THE TESTING RESULTS STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection
    Input Pricing Review Selection
    Input Testing API Selection
    Input Testing Results Selection

Create API Key_Production API
    [Documentation]    *THIS TC IS TO TEST THE PRODUCTION API STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case
    Input Identity Related Data Capture Selection checkbox
    Input Identity Validation Method Selection checkbox
    Input Consent Capture Method Selection
    Input Pricing Review Selection
    Input Testing API Selection
    Input Testing Results Selection
    Input Production API Selection

Create API Key_Common Use Cases - Selection Made - Create your own use case
    [Documentation]    *THIS TC IS TO TEST THE COMMON USE CASES STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case

Create API Key_Industry Selection_Empty API Name_Error Message
    [Documentation]    *THIS TC IS TO TEST THE INDUSTRY STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Click Next button
    ${status}    Run Keyword And Return Status    Page Should Contain Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div[2]/div/p    #Empty API Name textbox Error Message
    Run Keyword If    "${status}" == "True"    Page Should Contain    Please provide an API name

Create API Key_Industry Selection_Empty Industry_Error Message
    [Documentation]    *THIS TC IS TO TEST THE INDUSTRY STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Click Next button
    ${status}    Run Keyword And Return Status    Page Should Contain Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div/p    #Empty Industry dropdown Error Message
    Run Keyword If    "${status}" == "True"    Page Should Contain    Please select an industry from the list of industries

Create API Key_Geography Selection_Empty Geography_Error Message
    [Documentation]    *THIS TC IS TO TEST THE GEOGRAPHY STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Click Next button
    ${status}    Run Keyword And Return Status    Page Should Contain Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div[2]/div[2]/div/div[2]/div/p    #Empty Geography dropdown Error Message
    Run Keyword If    "${status}" == "True"    Page Should Contain    Please select a geography

Create API Key_Common Use Cases - Selection Made - Retail Customer Onboarding
    [Documentation]    *THIS TC IS TO TEST THE COMMON USE CASES STEP OF THE CREATE NEW API FLOW*
    Launch API Keys Dashboard page
    Verify if the User is on Create API Keys page
    Input API Name textbox
    Input Industry Selection dropdown
    Input Geography Selection dropdown    Canada
    Input Common Use Cases Selection - Selection Made - Create your own use case

*** Keywords ***
