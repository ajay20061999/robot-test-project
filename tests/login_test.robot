Library           SeleniumLibrary
Resource          ../variables/variables.robot
Resource          ../resources/keywords.robot
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser


Valid Login Test
    Login    ${USERNAME}    ${PASSWORD}
    Verify Login Success
