*** Settings ***
Library            SeleniumLibrary
Suite Teardown     Close Browser

*** Test Cases ***
Hello with Google
    SeleniumLibrary.Open Browser    http://www.google.com    browser=chrome  remote_url=http://159.223.55.226:4444/wd/hub 
    SeleniumLibrary.Maximize Browser Window
    