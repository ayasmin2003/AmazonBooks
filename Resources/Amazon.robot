*** Settings ***

Resource  ../Resources/PageObject/GoToPage.robot
Library   Selenium2Library

*** Keywords ***

Search Product From Amazon
    GoToPage.Load
    GoToPage.Verify Page Loaded
    Input Text  id=twotabsearchtextbox  Alex Rider
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Alex Rider"

Select Product From Search Result
    #Click Link  css=#result_1 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > a:nth-child(1)
    Click Link  xpath=//*[@id="result_1"]/div/div/div/div[2]/div[2]/div[1]/a
    Wait Until Page Contains  Back to search results

Add The Product To Cart
    Click Button  id=add-to-cart-button-ubb
    Wait Until Page Contains  Added to Cart

Check Login Page
    Click link  css=#hlb-ptc-btn-native
    Page Should Contain Element  signInSubmit
