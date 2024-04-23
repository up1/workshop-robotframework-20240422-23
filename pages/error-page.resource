*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

*** Keywords ***
Should display Error Page
    Wait Until Element Contains    xpath://*[@data-test="page_name"]   Error Page
    Wait Until Element Contains    xpath://*[@data-test="result"]   Login failed. Invalid user name and/or password.