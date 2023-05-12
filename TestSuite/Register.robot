*** Settings ***
Documentation    This file is for registering account
Library    SeleniumLibrary
Library    FakerLibrary
# have to install seleniumScreenshots
Library    SeleniumScreenshots 
Library    Screenshot

Resource    ../Resource/common.resource
Resource    ../Resource/Registration.resource
Variables    ../TestData/registerPageTestData.py
Variables    ../TestData/invalidRegisterPageTestData.py
Test Setup    Launching the browser

*** Test Cases ***
Register User and Validating Registration details
    Click register Button
    Select Gender    ${genderName}    

     # generating first_name using FakerLibrary
    ${firstName}    FakerLibrary.First Name
    # Set Global Variable    ${first_name}    
    # log    ${first_name}
    
    # enter FirstName        FakerLibrary.First Name
    # enter FirstName     ${firstName}
    Input Text    ${text_fName}    FakerLibrary.First Name
    
    # # generating first_name using FakerLibrary
    ${lastName}    FakerLibrary.Last Name
    # Set Global Variable    ${last_name}    
    # log    ${last_name}
    
    # enter LastName    FakerLibrary.Last Name
    enter LastName    ${lastName}
    
     # # generating first_name using FakerLibrary
    ${monthIndex}    FakerLibrary.Month Name
    # Set Global Variable    ${last_name}  
    
  # generating first_name using FakerLibrary
    ${yearIndex}    FakerLibrary.Year
    # Set Global Variable    ${last_name}  

    # selecting the Date Of Birth    ${dateIndex}    FakerLibrary.Month Name    FakerLibrary.Year
    selecting the Date Of Birth    ${dateIndex}    ${monthIndex}    ${yearIndex}
    
    # generating first_name using FakerLibrary
    ${email}    FakerLibrary.Email    
    # Set Global Variable    ${last_name}
    # enter the email    FakerLibrary.Email
    enter the email    ${email}
    # enter the email    FakerLibrary.Email

    
    
    # generating first_name using FakerLibrary
    ${company}    FakerLibrary.Company    
    # Set Global Variable    ${last_name}
    
    # enter company Name    FakerLibrary.Company
    enter company Name    ${company}

    
   
    
    enter the password    ${passw}    
    # enter the confirm password    ${pas}    ${passRegExp}
    enter the confirm password    ${confirmPass}    

    password and confirmPassword should be equal    ${passw}    ${confirmPass}
    
    Click Button    ${register_btn} 
    Wait Until Page Contains    ${successRegisterPagetxt} 
    
    # How to take screenshot for passed testcases
    Capture Page Screenshot    C:/Users/UdhayaParanthaman/eclipse-workspace/RobotProjects/nopCommerceSampleProject/result/screenshot.png 


    # Close Browser
 
Register with incorrect data and validating 
    Click register Button
    # Select Gender    F     
    enter FirstName    ${nameFirst}    
    enter LastName    ${nameLast}
    # selecting the Date Of Birth    1    January    1999
    enter the email    ${invalidEmail} 
    enter company Name    ${invalidCompany}

    enter the password    ${invalidpassword}     
    enter the confirm password    ${invalidConfirmPassword}
    
    # password and confirmPassword should be equal    123gouse    Gouse12
    Click Button    ${register_btn} 

    # Wait Until Page Contains    ${successRegisterPagetxt}

    
   
    
       
       
    
      
     
    
      

         
         
    
    