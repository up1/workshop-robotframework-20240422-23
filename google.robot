*** Settings ***
Library      SeleniumLibrary

*** Test Cases ***
Hello with Google
    เปิด browser ไปยังหน้าค้นหาข้อมูล
    พิมพ์คำว่า "Hello robotframework" ในช่องค้นหา
    ต้องเจอผลการค้นหาที่ถูกต้อง

*** Keywords ***
ต้องเจอผลการค้นหาที่ถูกต้อง
    Wait Until Element Contains   name:q   Hello robotframework
    ${data}=  Get Text  id:result-stats
    @{values}=   Split String   ${DATA}   ${SPACE}   max_split=3
    Should be equal   ${values[0]}   ผลการค้นหาประมาณ
    Should be equal   ${values[2]}   รายการ
    Should Start With  ${values[3]}   (
    Should End With    ${values[3]}   )


เปิด browser ไปยังหน้าค้นหาข้อมูล
    Open Browser    http://www.google.com    browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window

พิมพ์คำว่า "Hello robotframework" ในช่องค้นหา
    Input Text   name:q  Hello robotframework
    Press Keys   name:q  RETURN
    