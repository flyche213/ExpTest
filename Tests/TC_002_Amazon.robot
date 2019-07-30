
*** Settings ***
Documentation  Facebook Test
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Resource  ../Resources/AmazonApp.robot
Test Setup  Start  ${Amazon}
Test Teardown  Close Browser


*** Test Cases ***
Amazon Authentication Test Case

#shows error message
    Run Keyword If  ${Value} > 20  AmazonLogIn
    ...  ELSE  Log  Error in Logging In
    AmazonNavigate


# Xpath from chrome doesnt work
    #Click Link  //*[@id="contentGrid_549694"]/div/div[2]/div[2]/div/div/a/img
    #sleep  3s
