*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://demo.openemr.io/b/openemr/interface/login/login.php?site=default
${BROWSER}        Chrome

*** Keywords ***
Launch Browser and Hit the URL
    Open Browser    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait  20s
    Go To    url=${LOGIN URL}