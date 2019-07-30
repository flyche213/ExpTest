*** Settings ***
Documentation  Amazon Keywords


*** Keywords ***
AmazonLogIn
    Click Link  xpath://a[text()='Your Amazon.com']
    AmazonCredentials  ${Amazon_User1}
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
