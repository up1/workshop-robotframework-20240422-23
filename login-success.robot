*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

*** Test Cases ***
Login success
    [Tags]    done   feature01
    Open login page
    Fill in user="demo" and password="mode"
    Should display Welcome Page

Login success 2
    [Tags]    testing   feature02
    Open login page
    Fill in user="demo" and password="mode"
    Should display Welcome Page

*** Keywords ***
Should display Welcome Page
    Wait Until Element Contains    xpath://*[@data-test="page_name"]   Welcome Page
    Wait Until Element Contains    xpath://*[@data-test="result"]   Login succeeded.

Fill in user="demo" and password="mode"
    Input Text    id=username_field    demo
    Input Text    id=password_field    mode
    Click Button    id=login_button

Open login page
    Open Browser    ${LOGIN_URL}    browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Login Page