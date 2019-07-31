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
