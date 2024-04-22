*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
Hello with Google
    Open Browser    http://www.google.com    browser=chrome   options=add_experimental_option("detach", True)