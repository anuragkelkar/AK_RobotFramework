*** Settings ***
Documentation    This validates login valid credentials

Resource    ../../resource/base/CommonFunctionality.resource

Test Setup  Launch Browser and Hit the URL
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Input Text    id=authUser    text=admin
    Input Password    id=clearPass    password=pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Title Should Be    OpenEMR
    