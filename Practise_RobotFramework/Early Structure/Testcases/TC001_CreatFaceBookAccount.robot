*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeyword/locators.py

*** Variables ***
${Url}  https://www.facebook.com/
${Browser}  Chrome

*** Keywords ***
READ LOCATOR
    [Arguments]  ${Jsonpath}
    ${Val}=  read_value_from_jasonfile  ${Jsonpath}
    [Return]   ${Val}

*** Test Cases ***
TC001_Creat_FaceBookAccount
    open browser  ${Url}   ${Browser}
    maximize browser window
    ${objLocator}=  READ LOCATOR  NewAccount.FirstName_TextBox
    log to console  ${objLocator}
    input text  xpath:${objLocator}  chethana
    ${objLocator}=  READ LOCATOR  NewAccount.LastName_TextBox
    log to console  ${objLocator}
    input text  xpath:${objLocator}  chethana
    ${objLocator}=  READ LOCATOR  NewAccount.Mobile_Email_TextBox
    log to console  ${objLocator}
    input text  xpath:${objLocator}  chethana
    ${objLocator}=  READ LOCATOR  NewAccount.Password_TextBox
    log to console  ${objLocator}
    input text  xpath:${objLocator}  chethana
    sleep  5
    close browser


