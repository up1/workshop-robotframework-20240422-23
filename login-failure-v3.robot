*** Settings ***
Resource          common.resource
Suite Setup       Open login page
Suite Teardown    Close Browser
Test TearDown     กลับไปยังหน้า login
Test Template     Template for login failed

*** Test Cases ***
#----------------------------------------------------
#  Test case name           |  username  | password  
#----------------------------------------------------
Wrong password                  demo     mode2
Wrong username                  demo2    mode
Wrong username and password     demo2    mode2

*** Keywords ***
Template for login failed
    [Arguments]    ${username}    ${password}
    Fill in data   ${username}    ${password}
    Should display Error Page