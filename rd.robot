*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Normal flow
    เข้ามายังหน้าแรกยื่นภาษี
    ดูข้อมูลช่วงเวลาการให้บริการจากแจ้งข่าวสาร
    ปิดแจ้งข่าวสาร
    เข้าสู่การยื่นแบบออนไลน์

*** Keywords ***
ดูข้อมูลช่วงเวลาการให้บริการจากแจ้งข่าวสาร
    Wait Until Page Contains Element    id:announceModal
    Element Should Be Visible    id:announceModal
    Click Element    xpath://*[@id="announceModal"]/div/div/div[2]/div/div[3]/span/a[1]

    Switch Window   NEW
    Wait Until Element Contains   xpath://div/div[2]/h4[3]   ช่วงเวลาการให้บริการของแต่ละช่องทาง

    Switch Window   MAIN
    Click Element   xpath://*[@id="announceModal"]/div/div/div[1]/button


เข้ามายังหน้าแรกยื่นภาษี
    Open Browser    https://efiling.rd.go.th/rd-cms/    chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
