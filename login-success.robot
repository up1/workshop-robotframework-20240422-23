*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Login success
    Open login page
    Fill in user="demo" and password="mode"
    Should display Welcome Page

*** Keywords ***
Open login page
    Open Browser    http://152.42.252.238:8000/    browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
    Tiltle Should Be    Login Page