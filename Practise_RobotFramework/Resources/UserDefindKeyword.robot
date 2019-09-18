*** Settings ***
Library  SeleniumLibrary
Library  .//PythonCoding/Login.py

*** Variables ***
${Url}=  https://www.facebook.com/
${Browser}=  Chrome

*** Keywords ***
Open Browser And Maximize
    open browser  ${Url}  ${Browser}
    maximize browser window

#############  End Of a Keyword ######################

Close Opened Browser
    close browser

#############  End Of a Keyword ######################

Close All Opened Browser
    close all browsers

#############  End Of a Keyword ######################

Read Element Locator
    [Arguments]   ${ElementName}
    ${Result}=  read_from_json_file  ${ElementName}
    [Return]  ${Result}

#############  End Of a Keyword ######################

Get Max Row Number From Excel
    [Arguments]   ${SheetName}
    ${Max_Row}=  read_max_rows_from_excel  ${SheetName}
    [Return]   ${Max_Row}

#############  End Of a Keyword ######################
Read Excel Data of Given Sheet
    [Arguments]  ${SheetName}  ${Row}  ${Col}
    ${Cell_Value}=  Read_Cell_Value   ${SheetName}   ${Row}   ${Col}
    [Return]   ${Cell_Value}

#############  End Of a Keyword ######################



