*** Settings ***
Documentation  Facebook Keywords


*** Keywords ***
#TODO Create dictionary for input text
Enter Credentials
  [Tags]  Smoke
  [Arguments]  ${UserData}
  Input Text  id:email  ${UserData[0]}
  Input Text  id:pass  ${UserData[1]}

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
  [Arguments]  ${Credentials}
  Enter Credentials  ${Credentials}
  Enter Info


FaceBook For Loop
        [Arguments]  ${LogInScenarios}
        :For  ${CSV_FBData}  IN  @{LogInScenarios}
        \  LogIn  ${CSV_FBData}


InvalidLogIn
  Enter Credentials  ${Login_User2}
  Enter Info


