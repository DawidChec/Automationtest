*** Settings ***
| Suite Setup | Set Library Search Order | AppiumLibrary | Selenium2Library
Library         AppiumLibrary
Resource        ../Resources/password.robot
Resource        ../Resources/android-res.robot

*** Test Cases ***
Login and Log out from Zengi Application
    Open Zangi Application
    Choose Sign/in button
    Type in Zengi number
    Type in Password
    Accept Storege permission
    Accept Permission
    Type in user name
    Set Password
    Confirm Zengi's policy
    Log out

    





