*** Settings ***
Documentation  Facebook Keywords


*** Keywords ***
#TODO Create dictionary for input text
Enter Credentials
  [Tags]  Smoke
  [Arguments]  ${UserData}
  Input Text  id:email  ${UserData.email}
  Input Text  id:pass  ${UserData.password}

Enter Info
  [Tags]  Smoke
  Input Text  ${first_name}  Test
  Input Text  ${last_name}  FBTest

Start
  [Tags]  Smoke
  [Arguments]  ${Site}
  Open Browser  ${Site.URL}  ${Site.Browser}
  Maximize Browser Window


LogIn
  Enter Credentials  ${Login_User1}
  Enter Info


InvalidLogIn
  Enter Credentials  ${Login_User2}
  Enter Info


