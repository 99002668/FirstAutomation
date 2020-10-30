*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***

FBInvalidCredentialTest
    Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe    
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...           platformName=android    DeviceName=emulator    browserName=chrome
    ...        chromedriverExecutable=${EXECDIR}${/}driver${/}chromedriver.exe
    Go To Url    https://m.facebook.com/
    Input Text    //*[@id='m_login_email']    rahul165498423@gmail.com
    Input Text    //*[@id='m_login_password']    sgfh49
    Sleep    2s    
    Click Element    //*[@value='Log In']
    Sleep    2s    
    Element Should Contain Text    //*[contains(text(),'Invalid')]        Invalid
               
MagentoInvalidCredentialTest
    Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe    
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...           platformName=android    DeviceName=emulator    browserName=chrome
    ...        chromedriverExecutable=${EXECDIR}${/}driver${/}chromedriver.exe
    Go To Url    https://magento.com/
    Click Element    //header/button[1]
    
    Wait Until Element Is Visible    //*[text()='My Account']    
    Click Element    //*[text()='My Account']
    
    Wait Until Element Is Visible    //*[text()="Sign in"]  
      
    Input Text    //*[@id="email"]    balaji0017@gmail.com
    Input Text    //*[@id="pass"]    welcome@12345
    Click Element    //*[@class="-pull-right action login spectrum-Button spectrum-Button--cta"]
    Sleep    10s    
    Page Should Contain Text    Log Out    
    Sleep    5s    
    Close Application
    
    
    