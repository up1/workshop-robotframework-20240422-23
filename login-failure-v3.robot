*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open login page
Suite Teardown    Close Browser
Test TearDown     กลับไปยังหน้า login
Test Template     Template for login failed

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

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

Fill in data
    [Arguments]    ${username}    ${password}
    Input Text    id=username_field    ${username}
    Input Text    id=password_field    ${password}
    Click Button    id=login_button

Fill in user="${username}" and password="${password}"
    Input Text    id=username_field    ${username}
    Input Text    id=password_field    ${password}
    Click Button    id=login_button

Should display Error Page
    Wait Until Element Contains    xpath://*[@data-test="page_name"]   Error Page
    Wait Until Element Contains    xpath://*[@data-test="result"]   Login failed. Invalid user name and/or password.

Open login page
    Open Browser    ${LOGIN_URL}    browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Login Page

กลับไปยังหน้า login
    Go To    ${LOGIN_URL}