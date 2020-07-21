*** Settings ***
Documentation  #This is Ozow Simple Calculator Test cases
Library  SeleniumLibrary    #This is the library that the tests uses to run

*** Variables ***
#This are all my variables
${Ipay}=    http://test.i-pay.co.za/qa/calculator.html
${number}=  //input[@name='number1']
${numbers}=     //input[@name='number2']
${add}=     //option[contains(text(),'+')]
${subtract}=    //option[contains(text(),'-')]
${multiply}=     //option[contains(text(),'*')]
${divide}=      //body//option[4]
${equals}=      //button[@class='btn btn-primary btn-lg']
${positive}=    //*[@class='number-answer px-3 border text-success']
${negative}=    //*[@class='number-answer px-3 border text-danger']
*** Test Cases ***

User can add any numbers below 999
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  1
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${add}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  100
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${positive}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can add negative numbers
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  -400
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${add}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  -999
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${negative}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can subtract any numbers below 999
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  100
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${subtract}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  1
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${positive}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can subtract negative numbers

   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  -25
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${subtract}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  -20
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${negative}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can multiply any numbers below 999
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  5
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${multiply}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  100
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${positive}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can multiply negative numbers
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  -10
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${multiply}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  +10
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${negative}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can divide any numbers below 999
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  -500
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${divide}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  -10
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${positive}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser

User can divide negative numbers
   #Opens Website
   open browser  ${Ipay}  Chrome
   #Makes Browser Big
   maximize browser window
   #Enters Number
   input text   ${number}  -500
   #Wait
   sleep  2s
   #Click on the dropdwn
   click element  operation
   #Waits
   sleep  1s
   #Select math operation
   click element    ${divide}
   #Waits
   sleep  1s
   #Enters Number
   input text   ${numbers}  +10
   #Waits
   sleep  1s
   #Clicks eqauls button
   click button  ${equals}
   #Check if positive answers displayed in green and success
   wait until element is visible    ${negative}
   #Wait 1 second
   sleep  1s
   #Closes browser
   close browser


