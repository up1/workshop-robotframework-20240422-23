*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

*** Test Cases ***
Wrong password
    Open login page
    Fill in user="demo" and password="mode2"
    Should display Welcome Page

*** Keywords ***
Should display Welcome Page
    Wait Until Element Contains    xpath://*[@data-test="page_name"]   Error Page
    Wait Until Element Contains    xpath://*[@data-test="result"]   Login failed. Invalid user name and/or password.

Fill in user="demo" and password="mode2"
    Input Text    id=username_field    demo
    Input Text    id=password_field    mode2
    Click Button    id=login_button

Open login page
    Open Browser    ${LOGIN_URL}    browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
    Title Should Be    Login Page