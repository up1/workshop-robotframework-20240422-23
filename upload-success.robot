*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${UPLOAD_URL}     http://nervgh.github.io/pages/angular-file-upload/examples/simple/


*** Test Cases ***
Upload 3 files
    เข้ามายังหน้า upload file
    ทำการเลือกไฟล์ที่ 1 "input01.txt"
    ทำการเลือกไฟล์ที่ 2 "input02.txt"
    ทำการเลือกไฟล์ที่ 3 "input03.txt"
    กดปุ่ม upload ไฟล์ที่ 1 และตรวจสอบผลการ upload
    กดปุ่ม upload ไฟล์ที่ 2 และตรวจสอบผลการ upload
    กดปุ่ม upload ไฟล์ที่ 3 และตรวจสอบผลการ upload

*** Keywords ***
ทำการเลือกไฟล์ที่ 1 "input01.txt"
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]   ${CURDIR}/files/input01.txt

ทำการเลือกไฟล์ที่ 2 "input02.txt"
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]   ${CURDIR}/files/input02.txt

ทำการเลือกไฟล์ที่ 3 "input03.txt"
    Choose File   xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]   ${CURDIR}/files/input03.txt


เข้ามายังหน้า upload file
    Open Browser   ${UPLOAD_URL}     browser=chrome   options=add_experimental_option("detach", True)
    Maximize Browser Window
    # Check if the page is loaded