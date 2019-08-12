*** Settings ***
Documentation  Amazon Keywords


*** Keywords ***
Amazon Test Link
    Open Browser  https://www.amazon.com/  ${Browser}
    Click Link  //a[@href="/gp/goldbox?ref_=nav_cs_gb_azl"]
    #Click Element  //button[@id="a-autoid-3-announce"]
    sleep  3s

    Close Browser
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
    Input Text  id:ap_email  ${UserData[0]}
    Input Text  id:ap_password  ${UserData[1]}

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

Amazon For Loop
        [Arguments]  ${LogInScenarios}
        :For  ${CSV_Data}  IN  @{LogInScenarios}
        \  AmazonLogIn  ${CSV_Data}