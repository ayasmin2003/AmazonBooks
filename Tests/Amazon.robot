*** Settings ***

Documentation   This is a test to search and select a book from amazon
...             This is a demo test
Resource   ../Resources/Amazon.robot
Resource   ../Resources/Common.robot

Suite Setup     Insert Test Data
Test Setup      Begin Web Test
Test Teardown   End Web Test
Suite Teardown   Clean Test Data

# pybot -d Results --include smoke Tests/Amazon.robot

*** Variables ***

${BROWSER} =  chrome
${URL} =  http://www.amazon.com

*** Test Cases ***

Search product from amazon
    [Documentation]  Search and order a product from amazon.com
    [Tags]  smoke
    Amazon.Search Product From Amazon
    Amazon.Select Product From Search Result
    Amazon.Add The Product To Cart
    Check Login Page

User visits Amazon webpage
    [Documentation]  Go to amazon webpage
    [Tags]  smoke
    Search Product From Amazon