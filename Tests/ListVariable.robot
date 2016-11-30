*** Settings ***


*** Variables ***
@{MY_DATA} =  Hello world  Automate it   High QA

*** Test Cases ***
List of Variables

    Log  @{MY_DATA}[0]
    Log  @{MY_DATA}[1]
    Log  @{MY_DATA}[2]

*** Keywords ***
