*** Settings ***
Documentation    Search JD
Library    SeleniumLibrary

*** Test Cases ***
Verify if job is available
    [Documentation]  This case verify if JD is available
    [Tags]    Functional
    Set Selenium Implicit Wait  5s
    Open Browser    https://www.ausy.com/    chrome
    Maximize Browser Window
    Click Element    //*[@id="onetrust-accept-btn-handler"]
    Click Element    //*[@id="block-main-navigation"]/div[1]/div/div[1]/ul[1]/li[1]/a
    Input Text    //*[@id="search-keyword"]    python automation
    ${Variable_to_see_wait_time} =  Get Selenium Implicit Wait
    Click Element    class: page-node-type-landing-page >> xpath: //*[@id="header-search-form"]/div[1]/div[2]/button
    Click Element    tag: body >> class: cards__link
Apply to job position
    [Documentation]    Complete the application from


