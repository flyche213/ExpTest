
*** Settings ***
Documentation  Amazon Test Login Capabilities and Navigation
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Resource  ../Resources/AmazonApp.robot
Test Setup  Start  ${Amazon}
Test Teardown  Close Browser


*** Test Cases ***
#TODO Change these cases into 1 single case
#TODO Loop with several users
Amazon Authentication Test Case User One
    Run Keyword If  ${Value} > 20  AmazonLogIn  ${Amazon_User1}
    ...  ELSE  Log  Error in Logging In
    AmazonNavigate


Amazon Authentication Test Case Invalid User
    Run Keyword If  ${Value} > 20  AmazonLogIn  ${Amazon_User2}
    ...  ELSE  Log  Error in Logging In
    AmazonNavigate


Amazon Authentication Test Case View Error Message
#Logs error message
    [Tags]  null
    Run Keyword If  ${Value} > 200  AmazonLogIn  ${Amazon_User3}
    ...  ELSE  Log  Error in Logging In




