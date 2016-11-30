*** Settings ***

Library   Selenium2Library

*** Keywords ***

Begin Web Test
    Open Browser   About:Blank   chrome

End Web Test
    Close Browser

Insert Test Data
     Log   I will insert test data

Clean Test Data
     Log   I will clean test data