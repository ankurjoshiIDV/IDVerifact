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
By Identity Solutions Page
    [Documentation]    *THIS TC IS TO TEST THE BY IDENTITY SOLUTIONS PAGE*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page

Identity Solutions Details Page
    [Documentation]    *THIS TC IS TO TEST THE IDENTITY SOLUTIONS DETAILS PAGE - KYC*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page
    Navigate to the Digital Identity Solutions KYC Details page

By Business Process Page
    [Documentation]    *THIS TC IS TO TEST THE BY IDENTITY SOLUTIONS PAGE*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page
    Click Element    //*[@id="mui-component-select-identitySolution"]    #Filter dropdown on the top right corner
    Click Element    //*[@id="menu-identitySolution"]/div[3]/ul/li[2]    #By Business Process filter selection from the dropdown
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div[1]/div/span[3]    Business Process    #Breadcrumb
    Wait Until Page Contains Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]    #First Logo
    Capture Page Screenshot    Digital Identity Solutions - By Business Process page.png

By Partner Page
    [Documentation]    *THIS TC IS TO TEST THE BY IDENTITY SOLUTIONS PAGE*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page
    Click Element    //*[@id="mui-component-select-identitySolution"]    #Filter dropdown on the top right corner
    Click Element    //*[@id="menu-identitySolution"]/div[3]/ul/li[3]    #By Business Process filter selection from the dropdown
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div[1]/div/span[3]    Partners    #Breadcrumb
    Wait Until Page Contains Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]    #First Logo
    Capture Page Screenshot    Digital Identity Solutions - By Partners page.png

Business Process Details Page
    [Documentation]    *THIS TC IS TO TEST THE BY IDENTITY SOLUTIONS PAGE*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page
    Click Element    //*[@id="mui-component-select-identitySolution"]    #Filter dropdown on the top right corner
    Click Element    //*[@id="menu-identitySolution"]/div[3]/ul/li[2]    #By Business Process filter selection from the dropdown
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div[1]/div/span[3]    Business Process    #Breadcrumb
    Wait Until Page Contains Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]    #First Logo
    Capture Page Screenshot    Digital Identity Solutions - By Business Process page.png
    Click Image    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[4]/div/a/img    #“>” symbol
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div/span[4]    Retail Customer Onboarding    #Breadcrumb

Partner Details Page
    [Documentation]    *THIS TC IS TO TEST THE BY IDENTITY SOLUTIONS PAGE*
    Launch API Keys Dashboard page
    Verify if the User is on Digital Identity Solutions page
    Click Element    //*[@id="mui-component-select-identitySolution"]    #Filter dropdown on the top right corner
    Click Element    //*[@id="menu-identitySolution"]/div[3]/ul/li[3]    #By Business Process filter selection from the dropdown
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div[1]/div/span[3]    Partners    #Breadcrumb
    Wait Until Page Contains Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[1]    #First Logo
    Capture Page Screenshot    Digital Identity Solutions - By Partners page.png
    Click Image    //*[@id="root"]/div/div[2]/div[2]/div/div/div[2]/div/div/div[2]/div/div/div[4]/div/a/img    #“>” symbol
    Wait Until Element Contains    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div/span[4]    IDMission    #Breadcrumb

*** Keywords ***

