*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}    http://152.42.252.238:8000/

*** Keywords ***
Should display Welcome Page
    Wait Until Element Contains    xpath://*[@data-test="page_name"]   Welcome Page
    Wait Until Element Contains    xpath://*[@data-test="result"]   Login succeeded.
