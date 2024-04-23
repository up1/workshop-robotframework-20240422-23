*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

*** Keywords ***
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