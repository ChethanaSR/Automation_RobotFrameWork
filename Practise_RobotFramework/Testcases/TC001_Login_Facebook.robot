*** Settings ***
Library  SeleniumLibrary
Library  ../PythonCoding/Login.py
Resource  ../Resources/UserDefindKeyword.robot
Test Setup  Open Browser And Maximize
Test Teardown  Close Opened Browser

*** Test Cases ***
Log IN Verificartion With Multiple Inputs
    ${row}=  Get Max Row Number From Excel  Login_Credentials
    : FOR   ${i}  IN RANGE  2  ${row}+1
    #\  Open Browser And Maximize
    \  ${UserName}=  Read Excel Data of Given Sheet  Login_Credentials  ${i}  1
    \  ${Password}=  Read Excel Data of Given Sheet  Login_Credentials  ${i}  2
    \  ${UserName_Xpath}=  Read Element Locator  Login_Facebook.username_textbox
    \  ${password_Xpath}=  Read Element Locator  Login_Facebook.password_textbox
    \  ${Login_Xpath}=  Read Element Locator  Login_Facebook.Login_Button
    \  input text  xpath:${UserName_Xpath}  ${UserName}
    \  input text  xpath:${password_Xpath}  ${Password}
    \  sleep  5
   # \  click element  xpath:${Login_Xpath}
   # \  Close Opened Browser