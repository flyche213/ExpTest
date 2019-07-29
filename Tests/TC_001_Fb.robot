
*** Settings ***
Documentation  Facebook Test
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Test Setup  Start  ${Facebook}
Test Teardown  Close Browser


*** Test Cases ***
Facebook Authentication Test Case
    [Documentation]  Enter information and clicks on Forgot Account link
    [Tags]  Smoke

    Run Keyword If  ${Value} > 200  LogIn
    ...  ELSE  InvalidLogIn

    Select Radio Button  sex  -1
    #Clear Element Text  name:firstname
    Sleep  3s
    Click Link  ${ForgotAccount}
    Enter Credentials  ${Login_User2}
    Sleep  3s

    #xpath link is not working...
    Click Link  Facebook
    #Click Link  xpath://a[text()='Go to Facebook Home']
    #Click Button  xpath://input[@type='submit']
    #Click Link  xpath://a[text()='Sign Up']

