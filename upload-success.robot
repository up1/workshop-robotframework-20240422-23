*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
Upload 3 files
    เข้ามายังหน้า upload file
    ทำการเลือกไฟล์ที่ 1 "input01.txt"
    ทำการเลือกไฟล์ที่ 2 "input02.txt"
    ทำการเลือกไฟล์ที่ 3 "input03.txt"
    กดปุ่ม upload ไฟล์ที่ 1 และตรวจสอบผลการ upload
    กดปุ่ม upload ไฟล์ที่ 2 และตรวจสอบผลการ upload
    กดปุ่ม upload ไฟล์ที่ 3 และตรวจสอบผลการ upload