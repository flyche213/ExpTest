
*** Settings ***
Documentation  Amazon Test Login Capabilities and Navigation
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/DataManager.robot
Test Setup  Start  ${Amazon}
Test Teardown  Close Browser


*** Test Cases ***
#TODO Change these cases into 1 single case with out For Loop
#Amazon For Loop
 #      @{items} =  Create List  ${Amazon_User1}  ${Amazon_User2}  ${Amazon_User3}
  #     :For  ${MyItem}  IN  @{items}
   #    \  AmazonLogIn  ${MyItem}

Link Test
    Amazon Test Link
View CSV
    ${LogInScenarios} =  DataManager.Get CSV Data  ${CSV_Info}
    Amazon For Loop  ${LogInScenarios}
    Close all Browsers










