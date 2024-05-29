*** Settings ***
Library         AppiumLibrary
Resource        password.robot

*** Variables ***
#*** Application Variables ***
${ZENGI-APPLICATION-ID}             com.beint.zangi
${ZENGI-APPLICATION-ACTIVITY}       com.beint.project.MainActivity

#*** Login Page ***
${SIGN-IN-BUTTON}                   //android.widget.TextView[@text='Sign-in']

#*** Loging in pages ***
${ZANGINUMBER-TEXTFIELD}            id=${ZENGI-APPLICATION-ID}:id/user_id
${ENTER-ZANGI-NUMBER-TEXT}          id=${ZENGI-APPLICATION-ID}:id/email_confirm
${NEXT-BUTTON}                      //android.widget.ImageButton[@index='1']
${SHOW-PASSWORD}                    id=${ZENGI-APPLICATION-ID}:id/text_input_end_icon
${PASSWORD-FIELD}                   //android.widget.EditText[@text='Password']
${STORAGE-PERMISSION}               id=${ZENGI-APPLICATION-ID}:id/header_tv
${CONTINUE}                         id=${ZENGI-APPLICATION-ID}:id/continue_btn
${PERMISSION-MESSAGE}               id=com.android.permissioncontroller:id/permission_message
${ALLOW}                            id=com.android.permissioncontroller:id/permission_allow_button
${YOUR-PROFILE}                     //android.widget.TextView[@text='Your Profile']
${FIRST-NAME-FIELD}                 id=${ZENGI-APPLICATION-ID}:id/edit_first_name
${LAST-NAME-FIELD}                  id=${ZENGI-APPLICATION-ID}:id/edit_last_name
${CONTIUE-YOUR-PROFILE}             id=${ZENGI-APPLICATION-ID}:id/continue_btn
${SET-PASSWORD-VIEW}                //android.widget.TextView[@text='Set Password']
${ENTER-YOUR-PASSWORD-FIELD}        id=${ZENGI-APPLICATION-ID}:id/password_edit_text
${CONFIRM-YOUR-PASSWORD}            id=${ZENGI-APPLICATION-ID}:id/password_confirm_edit_text
${CONITNUE-AFTER-SETTING-PASSWORD}  id=${ZENGI-APPLICATION-ID}:id/continue_btn
${SECURITY-CONFIRMATION}            //android.widget.TextView[@text='No Data Collection']
${NEXT-SCURITY-PAGE}                id=${ZENGI-APPLICATION-ID}:id/next_button_id
${SAVE-CONFIRMATION}                //android.widget.TextView[@text='Best Tech for Data Saving']
${RELIABLE-CONFIRMATION}            //android.widget.TextView[@text='The Best Quality']
${FAST-CONFIRMATION}                //android.widget.TextView[@text='Fastest Text & File Transfer']
${ZANGI-PREMIUM-ADV}                //android.widget.TextView[@text='Added Benefits with PREMIUM']
${START-BUTTON}                     id=${ZENGI-APPLICATION-ID}:id/next_button_id
${SETTINGS-BUTTON}                  //android.widget.LinearLayout[@index='3']
${PROFILE-BUTTON}                   id=${ZENGI-APPLICATION-ID}:id/user_info_Liner_layout_id
${SIGN-OUT-BUTTON}                  id=${ZENGI-APPLICATION-ID}:id/sign_out_btn
${KEEP-HISTORY}                     //android.widget.TextView[@text='KEEP HISTORY']

*** Keywords ***
Open Zangi Application
        Open Application    http://localhost:4723    platformName=Android    deviceName=emulator-5554    appPackage=${ZENGI-APPLICATION-ID}     appActivity=${ZENGI-APPLICATION-ACTIVITY}   automationName=Uiautomator2

Choose Sign/in button
    Wait Until Page Contains Element    ${SIGN-IN-BUTTON}
    Click Element                       ${SIGN-IN-BUTTON}

Type in Zengi number
    Wait Until Page Contains Element    ${ZANGINUMBER-TEXTFIELD}
    Wait Until Page Contains Element    ${ENTER-ZANGI-NUMBER-TEXT}
    Wait Until Page Contains Element    ${NEXT-BUTTON}
    Input Text                          ${ZANGINUMBER-TEXTFIELD}     ${ZANGINUMBER-USER1}
    Wait Until Page Contains Element    ${NEXT-BUTTON}
    Click Element                       ${NEXT-BUTTON}

Type in Password
    Wait Until Page Contains Element    ${SHOW-PASSWORD}
    Wait Until Page Contains Element    ${PASSWORD-FIELD}
    Input Text                          ${PASSWORD-FIELD}  ${PASSWORD}
    Click Element                       ${NEXT-BUTTON}

Accept Storege permission
    Wait Until Page Contains Element    ${STORAGE-PERMISSION}
    Wait Until Page Contains Element    ${CONTINUE}
    Click Element                       ${CONTINUE}

Accept Permission
    Wait Until Page Contains Element    ${PERMISSION-MESSAGE}
    Wait Until Page Contains Element    ${ALLOW}
    Click Element                       ${ALLOW}

Type in user name
    Wait Until Page Contains Element    ${YOUR-PROFILE}
    Wait Until Page Contains Element    ${FIRST-NAME-FIELD}
    Input Text                          ${FIRST-NAME-FIELD}    ${FIRST-NAME-USER1}
    Wait Until Page Contains Element    ${LAST-NAME-FIELD}
    Input Text                          ${LAST-NAME-FIELD}    ${LAST-NAME-USER1}
    Wait Until Page Contains Element    ${CONTIUE-YOUR-PROFILE}
    Click Element                       ${CONTIUE-YOUR-PROFILE}

Set Password
    Wait Until Page Contains Element    ${SET-PASSWORD-VIEW}
    Input Text                          ${ENTER-YOUR-PASSWORD-FIELD}      ${PASSWORD}
    Input Text                          ${CONFIRM-YOUR-PASSWORD}    ${PASSWORD}
    Click Element                       ${CONITNUE-AFTER-SETTING-PASSWORD}

Confirm Zengi's policy
    Wait Until Page Contains Element    ${SECURITY-CONFIRMATION}
    Click Element                       ${NEXT-SCURITY-PAGE}
    Wait Until Page Contains Element    ${SAVE-CONFIRMATION}
    Click Element                       ${NEXT-SCURITY-PAGE}
    Wait Until Page Contains Element    ${RELIABLE-CONFIRMATION}
    Click Element                       ${NEXT-SCURITY-PAGE}
    Wait Until Page Contains Element    ${FAST-CONFIRMATION}
    Click Element                       ${NEXT-SCURITY-PAGE}
    Wait Until Page Contains Element    ${ZANGI-PREMIUM-ADV}
    Click Element                       ${START-BUTTON}

Log out
    Wait Until Page Contains Element    ${SETTINGS-BUTTON}
    Click Element                       ${SETTINGS-BUTTON}
    Wait Until Page Contains Element    ${PROFILE-BUTTON}
    Click Element                       ${PROFILE-BUTTON}
    Wait Until Page Contains Element    ${SIGN-OUT-BUTTON}
    Click Element                       ${SIGN-OUT-BUTTON}
    Wait Until Page Contains Element    ${KEEP-HISTORY}
    Click Element                       ${KEEP-HISTORY}


