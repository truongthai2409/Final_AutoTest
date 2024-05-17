*** Settings ***
Library           SeleniumLibrary
Library           random
Library           String

*** Variables ***
${BROWSER}        Chrome
${URL}            https://automationteststore.com
${login_field}    id=loginFrm_loginname
${password_field}    id=loginFrm_password
${forgot_passowrd}    xpath=//*[@id="loginFrm"]/fieldset/a[1]
${forgot_login}    xpath=//*[@id="loginFrm"]/fieldset/a[2]
${btn_login}      xpath=//*[@id="loginFrm"]/fieldset/button
${Erorr}          xpath=//*[@id="maincontainer"]/div/div/div/div[1]
${VALID_USERNAME}    ThanhDat07
${VALID_PASSWORD}    987654321
${INVALID_USERNAME}    ThanhDat
${INVALID_PASSWORD}    000000

*** Test Cases ***
Check Out The Steps To The Login Page
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check Out The Steps To The Login Page1
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/account
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check Out The Steps To The Login Page2
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/login
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check Out The Steps To The Login Page3
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Account')]
    Mouse Over    xpath=//span[contains(text(),'Account')]
    Click Element    xpath=//span[contains(text(),'Login')]
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check The Page Has Enough Information
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Element Should Be Visible    ${login_field}
    Element Should Be Visible    ${password_field}
    Element Should Be Visible    ${forgot_passowrd}
    Element Should Be Visible    ${forgot_login}
    Element Should Be Visible    ${btn_login}

Check Out The Steps To The Login Thumbnail Page1
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/account
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check Out The Steps To The Login Thumbnail Page2
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/login
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Check Out The Steps To The Login Thumbnail Page3
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Account')]
    Mouse Over    xpath=//span[contains(text(),'Account')]
    Click Element    xpath=//span[contains(text(),'Login')]
    Location Should Be    https://automationteststore.com/index.php?rt=account/login

Valid Login Test
    [Documentation]    Verify that a user can login with valid credentials
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    Close Browser

Invalid Login Test
    [Documentation]    Verify that a user cannot login with invalid credentials
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${INVALID_USERNAME}
    Input Password    ${password_field}    ${INVALID_PASSWORD}
    Click Button    ${btn_login}
    ${Erorr_Message}    Get Text    ${Erorr}
    Should Be Equal As Strings    ${Erorr_Message}    ×\nError: Incorrect login or password provided.
    Close Browser

Missing login name
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    ${Erorr_Message}    Get Text    ${Erorr}
    Should Be Equal As Strings    ${Erorr_Message}    ×\nError: Incorrect login or password provided.
    Close Browser

Missing password name
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Click Button    ${btn_login}
    ${Erorr_Message}    Get Text    ${Erorr}
    Should Be Equal As Strings    ${Erorr_Message}    ×\nError: Incorrect login or password provided.
    Close Browser

Forgot Login Name
