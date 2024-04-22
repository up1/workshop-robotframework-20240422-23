*** Settings ***
Library    String

*** Variables ***
${DATA}    ผลการค้นหาประมาณ 140,000 รายการ (0.20 วินาที)

*** Test Cases ***
Test Case 1
    @{values}=   Split String   ${DATA}   ${SPACE}   max_split=3
    Log to console   \n${values[0]}
    Log to console   ${values[1]}
    Log to console   ${values[2]}
    Log to console   ${values[3]}
    Should be equal   ${values[0]}   ผลการค้นหาประมาณ
    Should be equal   ${values[2]}   รายการ
    Should Start With  ${values[3]}   (
    Should End With    ${values[3]}   )

    