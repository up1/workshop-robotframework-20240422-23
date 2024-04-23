*** Settings ***
Resource          ../pages/login-page.resource
Resource          ../pages/welcome-page.resource
Suite Teardown    Close Browser

*** Test Cases ***
Login success
    login-page.Open login page
    login-page.Fill in data   demo    mode
    welcome-page.Should display Welcome Page