*** Settings ***
Library    SeleniumLibrary
Variables    ../TestData/config.py
Variables    ../locators/homePage.py
Variables    ../locators/registerPage.py
Variables    ../TestData/registerPageTestData.py

*** Keywords ***
Launching the browser
    Create Webdriver    ${browserName}
    Go To    ${url}
    Maximize Browser Window 
    
Click register Button
    # Launching the browser
    Wait Until Element Is Visible    ${text_homePage}
    Click Element    ${click_registerBtn}  
    Wait Until Element Contains    ${text_registerPage}    ${registerPageSuccessTxt}
    
closing browser
    Close Browser
    
 
    