Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD_XPATH}    10s
    Input Text    ${USERNAME_FIELD_XPATH}    ${username}
    Input Text    ${PASSWORD_FIELD_XPATH}    ${password}
    Click Element    ${LOGIN_BUTTON_XPATH}
    Wait Until Element Is Visible    ${WELCOME_IMAGE_XPATH}    10s
    Element Should Be Visible    ${WELCOME_IMAGE_XPATH}

Verify Login Success
    Element Should Be Visible    ${WELCOME_IMAGE_XPATH}