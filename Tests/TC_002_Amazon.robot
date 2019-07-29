
*** Settings ***
Documentation  Facebook Test
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/FBApp.robot
Test Setup  Start  ${Amazon}
Test Teardown  Close Browser


*** Test Cases ***
Amazon Authentication Test Case
    #Links for hello sign in and todays deal can't work
    #Click Link  xpath://a[text()='Today's Deal']
#    Click Link  xpath=//a[@tableindex='47']
    #this link works
#    Click Link  xpath=//a[@id='nav-your-amazon']
    Click Link  xpath://a[text()='Your Amazon.com']
    sleep  5s

    Input Text  id:ap_email  Emailone
    Input Text  id:ap_password  Default
    #sleep  5s
    Click Link  xpath=//a[@id='createAccountSubmit']
    sleep  3s
    Click Link  xpath=//a[@class='a-link-nav-icon']
    sleep  3s
    Click Link  xpath=//a[text()='Gift Cards']
    sleep  3s
    # This link doesn't work
    # Click Link  xpath=//a[text()='Today's Deals']

    Click Link  xpath=//img[text()='Thank You']
#<div class="bxc-grid__image   bxc-grid__image--light">
#	<a href="/b/ref=s9_acss_bw_cg_gchol17_2a1_w?node=2973106011&amp;pf_rd_m=ATVPDKIKX0DER&amp;pf_rd_s=merchandised-search-5&amp;pf_rd_r=T9Y7ERJP6YZ0DG0C54D7&amp;pf_rd_t=101&amp;pf_rd_p=28f719f0-ae05-4565-b18e-3effc837dffb&amp;pf_rd_i=2238192011">
#					<img onload="window.uet &amp;&amp; uet.call &amp;&amp; uet(&quot;cf&quot;);" src="https://images-na.ssl-images-amazon.com/images/G/01/gift-certificates/consumer/2018/GCLP/2x/occ_dt_birthday_2x._CB483877124_.jpg" alt="Birthday Gift Cards">
#			</a>
#</div>

#xpath://a[text()='Forgot account?']