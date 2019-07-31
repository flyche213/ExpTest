
*** Settings ***
Documentation  Amazon Test Login Capabilities and Navigation
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/DataManager.robot
Resource  ../CustomLibs/Csv.py
Test Setup  Start  ${Amazon}
Test Teardown  Close Browser


*** Test Cases ***
#TODO Change these cases into 1 single case with out For Loop

View CSV
    ${LogInScenarios} =  Get CSV Data  ${CSV_Info}
    Amazon For Loop  ${LogInScenarios}









