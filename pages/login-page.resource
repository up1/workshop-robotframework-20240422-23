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

Open login page
    Open Browser    ${LOGIN_URL}    browser=chrome   options=add_experimental_option("detach", True)
    ...  remote_url=http://159.223.55.226:4444/wd/hub

    Maximize Browser Window
    Title Should Be    Login Page

กลับไปยังหน้า login
    Go To    ${LOGIN_URL}