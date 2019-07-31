*** Settings ***
Documentation  Facebook Test Data

*** Variables ***
${VALUE}  100
#Dictionary
&{Login_User1}  email=hello  password=world
&{Login_User2}  email=hello@login  password=fbtest
&{Amazon_User1}  email=emailone  password=Default
&{Amazon_User2}  email=emailtwo  password=password
&{Amazon_User3}  email=emailthree  password=secret
&{Webpage}  Browser=Chrome  URL=https://www.facebook.com/
#Links
#xpaths
${first_name}  name:firstname
${last_name}  xpath://input[@name='lastname']
${ForgotAccount}  xpath://a[text()='Forgot account?']
${custom}  sex  -1
#Configurations
${Browser}  Chrome
${URL}  https://www.facebook.com/
&{Facebook}  Browser=Chrome  URL=https://www.facebook.com/
&{Amazon}  Browser=Chrome  URL=https://www.Amazon.com/


