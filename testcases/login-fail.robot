*** Settings ***
Resource          ../pages/login-page.resource
Resource          ../pages/error-page.resource
Suite Setup       login-page.Open login page
Suite Teardown    Close Browser
Test TearDown     login-page.กลับไปยังหน้า login
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
    login-page.Fill in data   ${username}    ${password}
    error-page.Should display Error Page