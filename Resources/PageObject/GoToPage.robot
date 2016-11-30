*** Settings ***
Library   Selenium2Library


*** Keywords ***

Load
    Go To  https://www.amazon.com
    maximize browser window

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com

