*** Settings ***
Suite Teardown    Run Keywords    Capture Page Screenshot    Close All Browsers
Test Teardown     Run Keywords    Capture Page Screenshot    Close All Browsers
Library           SeleniumLibrary
Library           Collections
Library           String
Resource          IDV_Keywords.txt

*** Variables ***
${env_url}        https://uat-id.prodigylabs.net/dashboard

*** Test Cases ***
Dashboard Page - Today filter
    [Documentation]    *THIS TC IS TO TEST THE DASHBOARD PAGE - TODAY FILTER.*
    Launch API Keys Dashboard page
    Select a filter option on the Dashboard page    Today

Dashboard Page - Last Week filter
    [Documentation]    *THIS TC IS TO TEST THE DASHBOARD PAGE - LAST WEEK FILTER.*
    Launch API Keys Dashboard page
    Select a filter option on the Dashboard page    Week

Dashboard Page - Last Month filter
    [Documentation]    *THIS TC IS TO TEST THE DASHBOARD PAGE - LAST MONTH FILTER.*
    Launch API Keys Dashboard page
    Select a filter option on the Dashboard page    Month

Dashboard Page - Last Year filter
    [Documentation]    *THIS TC IS TO TEST THE DASHBOARD PAGE - LAST YEAR FILTER.*
    Launch API Keys Dashboard page
    Select a filter option on the Dashboard page    Year

*** Keywords ***
