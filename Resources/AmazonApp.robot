*** Settings ***
Documentation  Amazon Keywords


*** Keywords ***
AmazonLogIn
    [Tags]  IfELSE
    [Arguments]  ${Creditentials}
    Click Link  xpath://a[text()='Your Amazon.com']
    AmazonCredentials  ${Creditentials}
    Click Link  xpath=//a[@id='createAccountSubmit']
    sleep  3s
    AmazonNavigate


AmazonCredentials
    [Tags]  Smoke
    [Arguments]  ${UserData}
    Input Text  id:ap_email  ${UserData.email}
    Input Text  id:ap_password  ${UserData.password}

AmazonNavigate
    Click Link  xpath=//a[@class='a-link-nav-icon']
    sleep  3s
    Click Link  xpath=//a[text()='Gift Cards']
    sleep  3s


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