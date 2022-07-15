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
Get All API Keys
    [Documentation]    *This TC is to test if all the API Keys are returned and displayed on the API Keys List page.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    50
    Compare a count of existing API Keys

Filter All API Keys_API Name filter
    [Documentation]    *This TC is to test the Filter API Key functionality using the API Name textbox.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Comment    Change the number of API Keys displayed    50
    Get a count of existing API Keys with Filter Option    ${EMPTY}
    Filter the API Keys List based upon API Name filter on Digital Identity APIs page
    Compare a count of existing API Keys with Filter Option
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_filter}    #List Length comparison
    Lists Should Be Equal    ${list_API_filter}    ${list_API}

Reset Filter All API Keys
    [Documentation]    *This TC is to test the reset button of the Filter API Key functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Comment    Change the number of API Keys displayed    50
    Get a count of existing API Keys with Filter Option    ${EMPTY}
    Filter the API Keys List based upon API Name filter on Digital Identity APIs page
    Compare a count of existing API Keys with Filter Option
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_filter}    #List Length comparison
    Lists Should Be Equal    ${list_API_filter}    ${list_API}
    Click Reset Filter button
    Compare a count of existing API Keys

Pagination - Next Page
    [Documentation]    *This TC is to test the Next Page button of Pagination functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    5
    Compare a count of existing API Keys
    Compare API Key pagination between current and next pages
    Comment    Compare a count of existing API Keys List with the Next Page
    Comment    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_sort}
    Comment    ${lists_comparison_status}    Run Keyword And Return Status    Lists Should Be Equal    ${list_API}    ${list_API_sort}
    Comment    Pass Execution If    "${lists_comparison_status}" == "False"    Lists are different thus the Test is a Pass.

Sort All API Keys by API Name
    [Documentation]    *This TC is to test the Sort API Key functionality using API Name column.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    10
    Compare a count of existing API Keys
    ${APIKeys_pagecount}    Get Text    //*[@id="root"]/div/div[2]/div[2]/div/div/div[3]/div/div/table/tfoot/tr/td/div/div/div/p[2]
    ${APIKeys_pagecount}    Fetch From Left    ${APIKeys_pagecount}    o
    ${APIKeys_pagecount}    Set Variable    ${APIKeys_pagecount.strip()}
    Click Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[3]/div/div/div[3]/table/thead/tr/th[2]/span/div/div[1]    #API Name heading name
    ${APIKeys_newpagecount}    Get Text    //*[@id="root"]/div/div[2]/div[2]/div/div/div[3]/div/div/table/tfoot/tr/td/div/div/div/p[2]
    ${APIKeys_newpagecount}    Fetch From Left    ${APIKeys_newpagecount}    o
    ${APIKeys_newpagecount}    Set Variable    ${APIKeys_newpagecount.strip()}
    Should Be Equal As Strings    ${APIKeys_pagecount}    ${APIKeys_newpagecount}
    Compare a count of existing API Keys List with the Next Page
    ${lists_comparison_status}    Run Keyword And Return Status    Lists Should Be Equal    ${list_API}    ${list_API_sort}
    Pass Execution If    "${lists_comparison_status}" == "False"    Lists are different thus the Test is a Pass.

Pagination - Previous Page
    [Documentation]    *This TC is to test the Previous Page button of Pagination functionality.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Change the number of API Keys displayed    5
    Compare a count of existing API Keys
    Compare API Key pagination between current and previous pages
    Compare a count of existing API Keys List with the Next Page
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_sort}
    ${lists_comparison_status}    Run Keyword And Return Status    Lists Should Be Equal    ${list_API}    ${list_API_sort}
    Pass Execution If    "${lists_comparison_status}" == "False"    Lists are different thus the Test is a Pass.

Navigation from Digital Identity APIs page to Create a New API page
    [Documentation]    *This TC is to test if all the API Keys are returned and displayed on the API Keys List page.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Click Element    //*[@id="root"]/div/div[2]/div[2]/div/div/div[1]/div[2]/button/span[1]    #In-Page New API Key button
    Verify if the User is on Create API Keys page

Filter All API Keys_Cost Center filter
    [Documentation]    *This TC is to test the Filter API Key functionality using the API Name textbox.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Comment    Change the number of API Keys displayed    50
    Get a count of existing API Keys with Filter Option    ${EMPTY}
    Filter the API Keys List based upon Cost Center filter on Digital Identity APIs page
    Compare a count of existing API Keys with Filter Option
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_filter}    #List Length comparison
    Comment    Lists Should Be Equal    ${list_API_filter}    ${list_API}

Filter All API Keys_Project filter
    [Documentation]    *This TC is to test the Filter API Key functionality using the API Name textbox.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Comment    Change the number of API Keys displayed    50
    Get a count of existing API Keys with Filter Option    ${EMPTY}
    Filter the API Keys List based upon Project filter on Digital Identity APIs page
    Compare a count of existing API Keys with Filter Option
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_filter}    #List Length comparison
    Comment    Lists Should Be Equal    ${list_API_filter}    ${list_API}

Filter All API Keys_Status filter
    [Documentation]    *This TC is to test the Filter API Key functionality using the API Name textbox.*
    Launch API Keys Dashboard page
    Verify if the User is on API Keys page
    Comment    Change the number of API Keys displayed    50
    Get a count of existing API Keys with Filter Option    ${EMPTY}
    Filter the API Keys List based upon Status filter on Digital Identity APIs page
    Compare a count of existing API Keys with Filter Option
    Should Be Equal As Integers    ${list_API_length}    ${list_API_length_filter}    #List Length comparison
    Comment    Lists Should Be Equal    ${list_API_filter}    ${list_API}

*** Keywords ***
