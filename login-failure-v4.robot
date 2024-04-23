*** Settings ***
Resource          common.resource
Suite Setup       Open login page
Suite Teardown    Close Browser

*** Test Cases ***
Login failed
    [Template]    Template for login failed
    #------------------------
    # username    | password
    #------------------------
        demo           mode2
        demo2          mode
        demo2          mode2

*** Keywords ***
Template for login failed
    [Arguments]    ${username}    ${password}
    Fill in data   ${username}    ${password}
    Should display Error Page
    กลับไปยังหน้า login