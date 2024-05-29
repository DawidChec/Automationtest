*** Settings ***
| Suite Setup | Set Library Search Order | AppiumLibrary | Selenium2Library
Library         AppiumLibrary

*** Variables ***
${REGISTER_BUTTON}     //android.widget.Button[@text='Register']
#Identify element by id
${SIGN-IN-BUTTON}     //android.widget.TextView[@text='Sign-in']
#Identify element by text in class
${REGISTER-AND-START-WITH-ZANGI}     //android.widget.TextView[@text='Register and start with Zangi']
#Identify element by contains function


*** Test Cases ***
Open_Application_and_Werify_HomePage
    Open Application    http://localhost:4723    platformName=Android    deviceName=emulator-5554    appPackage=com.beint.zangi     appActivity=com.beint.project.MainActivity   automationName=Uiautomator2
    #Open application with all this propoerties above

    Wait Until Page Contains Element    ${REGISTER_BUTTON}
    Wait Until Page Contains Element    ${SIGN-IN-BUTTON}
    Wait Until Page Contains Element    ${REGISTER-AND-START-WITH-ZANGI}
