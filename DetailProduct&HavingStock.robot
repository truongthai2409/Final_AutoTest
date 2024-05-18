*** Settings ***
Library           SeleniumLibrary
Library           random
Library           String

*** Variables ***
${BROWSER}        Chrome
${URL}            https://automationteststore.com
${login_field}    id=loginFrm_loginname
${password_field}    id=loginFrm_password
${btn_login}      xpath=//*[@id="loginFrm"]/fieldset/button
${VALID_USERNAME}    ThanhDat07
${VALID_PASSWORD}    987654321

*** Test Cases ***
Have Detail
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${random_id}=    Evaluate    random.randint(50, 123)
    Go To    https://automationteststore.com/index.php?rt=product/product&product_id=${random_id}
    Location Should Be    https://automationteststore.com/index.php?rt=product/product&product_id=${random_id}
    Wait Until Page Contains Element    xpath=//*[@id="product_details"]/div/div[2]/div/div/h1/span
    ${product_name}    Get Text    xpath=//*[@id="product_details"]/div/div[2]/div/div/h1/span
    ${product_price}    Get Text    xpath=//*[@id="product_details"]/div/div[2]/div/div/div[1]/div/div
    ${quantity}    Get Value    xpath=//*[@id="product_quantity"]
    Wait Until Element Is Visible    xpath=//span[@class="total-price"]
    ${total_price}    Get Text    xpath=//span[@class="total-price"]
    Run Keyword If    '${product_name}' != '' and '${product_price}' != '' and '${quantity}' != '' and '${total_price}' != ''
    ...    Log    Product details are present: ${product_name}, ${product_price}, ${quantity}
    ...    ELSE    Fail    Product details are missing
    [Teardown]    Close Browser

Have Stock
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${random_id}=    Evaluate    random.randint(50, 123)
    Go To    https://automationteststore.com/index.php?rt=product/product&product_id=${random_id}
    Location Should Be    https://automationteststore.com/index.php?rt=product/product&product_id=${random_id}
    Wait Until Page Contains Element    xpath=//span[@class="nostock"]
    Element Should Be Visible    xpath=//span[@class="nostock"]
    [Teardown]    Close Browser
