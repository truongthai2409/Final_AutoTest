*** Settings ***
Library           SeleniumLibrary
Library           random
Library           String

*** Variables ***
${BROWSER}        Chrome
${URL}            https://automationteststore.com
${VALID_USERNAME}    demo
${VALID_PASSWORD}    demo
${firstname_filed}    id=AccountFrm_firstname
${lastname_field}    id=AccountFrm_lastname
${email_field}    id=AccountFrm_email
${telephone_field}    id=AccountFrm_telephone
${fax_field}      id=AccountFrm_fax
${Company_field}    id=AccountFrm_company
${Address1_field}    id=AccountFrm_address_1
${Address2_field}    id=AccountFrm_address_2
${city_field}     id=AccountFrm_city
${select_region}    id=AccountFrm_zone_id
${zipcode}        id=AccountFrm_postcode
${select_country}    id=AccountFrm_country_id
${Login_name_filed}    id=AccountFrm_loginname
${Password_field}    id=AccountFrm_password
${Password_confirm_filed}    id=AccountFrm_confirm
${Radio1}         xpath=//input[@type='radio' and @value='1']
${Radio0}         xpath=//input[@type='radio' and @value='0']
${Checkbox}       id=AccountFrm_agree
${btn_continue_register}    xpath=//button[@class='btn btn-orange pull-right lock-on-click']
${btn_continue_register_success}    xpath=//*[@id="maincontainer"]/div/div[1]/div/div/section/a
${Error}          xpath=//*[@id="maincontainer"]/div/div/div/div[1]
${INVALID_USERNAME}    ThanhDat07
${INVALID_PASSWORD}    987654321

*** Test Cases ***
Check Out The Steps To The Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

Check Out The Steps To The Registration Page1
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/account
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

Check Out The Steps To The Registration Page2
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/login
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

Check Out The Steps To The Registration Page3
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Account')]
    Mouse Over    xpath=//span[contains(text(),'Account')]
    Click Element    xpath=//span[contains(text(),'Login')]
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

Check The Page Has Enough Information
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Element Should Be Visible    ${firstname_filed}
    Element Should Be Visible    ${lastname_field}
    Element Should Be Visible    ${email_field}
    Element Should Be Visible    ${telephone_field}
    Element Should Be Visible    ${fax_field}
    Element Should Be Visible    ${Company_field}
    Element Should Be Visible    ${Address1_field}
    Element Should Be Visible    ${Address2_field}
    Element Should Be Visible    ${city_field}
    Element Should Be Visible    ${select_region}
    Element Should Be Visible    ${zipcode}
    Element Should Be Visible    ${select_country}
    Element Should Be Visible    ${Login_name_filed}
    Element Should Be Visible    ${Password_field}
    Element Should Be Visible    ${Password_confirm_filed}
    Element Should Be Visible    ${Radio1}
    Element Should Be Visible    ${Radio0}
    Element Should Be Visible    ${Checkbox}
    Element Should Be Visible    ${btn_continue_register}

Check Out The Steps To The Registration Thumbnail Page1
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/account
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

Check Out The Steps To The Registration Thumbnail Page2
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    class=form-control
    Select From List By Value    class=form-control    https://automationteststore.com/index.php?rt=account/login
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.    com/index.php?rt=account/create

Check Out The Steps To The Registration Thumbnail Page3
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    800    600
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Account')]
    Mouse Over    xpath=//span[contains(text(),'Account')]
    Click Element    xpath=//span[contains(text(),'Login')]
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    Location Should Be    https://automationteststore.com/index.php?rt=account/create

User Should Be Able To Register With Valid Credentials With Random 10 Number-digits Wrong With Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    10    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!

User Should Be Able To Register With Valid Credentials With Random 4 Number-digits Wrong With LoginName And Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    4    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nEmail Address does not appear to be valid!

User Should Be Able To Register With Valid Credentials With Random 65 Number-digits Wrong With LoginName, FirstName, LastName, Telephone, Email. Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    65    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 2 Number-digits Wrong With LoginName, Email, Address, City, Zipcode, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    2    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nEmail Address does not appear to be valid!\nAddress 1 must be between 3 and 128 characters!\nCity must be between 3 and 128 characters!\nZip/postal code must be between 3 and 10 characters!\nPassword must be between 4 and 20 characters!

User Should Be Able To Register With Valid Credentials With Random 33 Number-digits Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    33    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 11 Number-digits Wrong With Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    11    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 21 Number-digits Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    21    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 129 Number-digits Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    129    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nAddress 1 must be between 3 and 128 characters!\nCity must be between 3 and 128 characters!\nZip/postal code must be between 3 and 10 characters!\nPassword must be between 4 and 20 characters!

User Should Be Able To Register With Valid Credentials With Random 10 Number-digits Wrong With Email, Region, Country
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number}=    Evaluate    random.randint(3513, 3612)
    ${random_number1}=    Evaluate    random.randint(1, 239)
    ${random_numbers}=    Generate Random String    10    1234567890
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Click Element    ${select_region}
    Click Element    xpath=//option[@value='${random_number}']
    Input Text    ${zipcode}    ${random_numbers}
    Click Element    ${select_country}
    Click Element    xpath=//option[@value='${random_number1}']
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!\nPlease select a region / state!

The User Has Omitted The Information For The First Name Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nFirst Name must be between 1 and 32 characters!

The User Has Omitted The Information For The Last Name Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLast Name must be between 1 and 32 characters!

The User Has Omitted The Information For The Email Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!

The User Has Omitted The Information For The Telephone Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    Congratulations! Your new account has been successfully created!\nYou can now take advantage of member privileges to enhance your online shopping experience with us.\nIf you have ANY questions about the operation of this online shop, please email the store owner.\nA confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.\nContinue

The User Has Omitted The Information For The Fax Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    Congratulations! Your new account has been successfully created!\nYou can now take advantage of member privileges to enhance your online shopping experience with us.\nIf you have ANY questions about the operation of this online shop, please email the store owner.\nA confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.\nContinue

The User Has Omitted The Information For The Company Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    Congratulations! Your new account has been successfully created!\nYou can now take advantage of member privileges to enhance your online shopping experience with us.\nIf you have ANY questions about the operation of this online shop, please email the store owner.\nA confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.\nContinue

The User Has Omitted The Information For The Address1 Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nAddress 1 must be between 3 and 128 characters!

The User Has Omitted The Information For The Address2 Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    Congratulations! Your new account has been successfully created!\nYou can now take advantage of member privileges to enhance your online shopping experience with us.\nIf you have ANY questions about the operation of this online shop, please email the store owner.\nA confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.\nContinue

The User Has Omitted The Information For The City Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nCity must be between 3 and 128 characters!

The User Has Omitted The Information For The Region Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nPlease select a region / state!

The User Has Omitted The Information For The Zipcode Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nZip/postal code must be between 3 and 10 characters!

The User Has Omitted The Information For The Country Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nPlease select a country!

The User Has Omitted The Information For The LoginName Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!

The User Has Omitted The Information For The Password Field
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nPassword must be between 4 and 20 characters!\nPassword confirmation does not match password!

The User Has Omitted The Information For The Radio
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    Congratulations! Your new account has been successfully created!\nYou can now take advantage of member privileges to enhance your online shopping experience with us.\nIf you have ANY questions about the operation of this online shop, please email the store owner.\nA confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.\nContinue

The User Has Omitted The Information For The Checkbox
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nError: You must agree to the Privacy Policy!

User Should Be Able To Register With Valid Credentials Pass
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_username}    Generate Random String    8    [LOWER]
    ${random_password}    Generate Random String    10    [UPPERCASE]
    ${random_numbers}=    Generate Random String    10    1234567890
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${DOMAIN}    Set Variable    example.com
    ${email}    Set Variable    ${random_username}@${DOMAIN}
    Input Text    ${firstname_filed}    ${random_username}
    Input Text    ${lastname_field}    ${random_username}
    Input Text    ${email_field}    ${email}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_username}
    Input Text    ${Address1_field}    ${random_numbers}${random_username}
    Input Text    ${Address2_field}    ${random_numbers}${random_username}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_username}
    Input Text    ${Password_field}    ${random_password}
    Input Text    ${Password_confirm_filed}    ${random_password}
    Click Element    ${Radio1}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Location Should Be    https://automationteststore.com/index.php?rt=account/success
    Wait Until Element Is Visible    xpath=//*[@id="maincontainer"]/div/div/div/h1/span[1]
    ${Main_text}    Get Text    xpath=//*[@id="maincontainer"]/div/div/div/h1/span[1]
    ${p1}    Get Text    xpath=/html/body/div/div[2]/div/div[1]/div/div/section/p[2]
    ${p2}    Get Text    xpath=/html/body/div/div[2]/div/div[1]/div/div/section/p[3]
    ${p3}    Get Text    xpath=/html/body/div/div[2]/div/div[1]/div/div/section/p[4]
    ${p4}    Get Text    xpath=/html/body/div/div[2]/div/div[1]/div/div/section/p[5]
    ${a}    Get Text    xpath=/html/body/div/div[2]/div/div[1]/div/div/section/p[5]/a
    Should Be Equal As Strings    ${Main_text}    YOUR ACCOUNT HAS BEEN CREATED!
    Should Be Equal As Strings    ${p1}    Congratulations! Your new account has been successfully created!
    Should Be Equal As Strings    ${p2}    You can now take advantage of member privileges to enhance your online shopping experience with us.
    Should Be Equal As Strings    ${p3}    If you have ANY questions about the operation of this online shop, please email the store owner.
    Should Be Equal As Strings    ${p4}    A confirmation has been sent to the provided email address. If you have not received it within the hour, please contact us.
    Should Be Equal As Strings    ${a}    contact us
    Element Should Be Visible    ${btn_continue_register_success}

User Should Be Able To Register With Valid Credentials With Random 10 Lower-Chacrater Wrong With Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    10    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!

User Should Be Able To Register With Valid Credentials With Random 4 Lower-Charater Wrong With LoginName And Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    4    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nEmail Address does not appear to be valid!

User Should Be Able To Register With Valid Credentials With Random 65 Lower-Charater Wrong With LoginName, FirstName, LastName, Telephone, Email. Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    65    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 2 Lower-Charater Wrong With LoginName, Email, Address, City, Zipcode, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    2    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nEmail Address does not appear to be valid!\nAddress 1 must be between 3 and 128 characters!\nCity must be between 3 and 128 characters!\nZip/postal code must be between 3 and 10 characters!\nPassword must be between 4 and 20 characters!

User Should Be Able To Register With Valid Credentials With Random 33 Lower-Charater Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    33    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 11 Lower-Charater Wrong With Email
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    11    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 21 Lower-Charater Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    21    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!\nPassword must be between 4 and 20 characters!
    Fatal Error    Zipcode exceeded the allowed number of characters but did not display an error message.

User Should Be Able To Register With Valid Credentials With Random 129 Lower-Charater Wrong With Email, Password
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number_country}=    Evaluate    random.randint(1, 239)
    ${random_number_region}=    Set Region Based On Country    ${random_number_country}
    ${random_numbers}=    Generate Random String    129    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Input Text    ${zipcode}    ${random_numbers}
    Select From List By Value    ${select_country}    ${random_number_country}
    Sleep    1s
    Select From List By Value    ${select_region}    ${random_number_region}
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nLogin name must be alphanumeric only and between 5 and 64 characters!\nFirst Name must be between 1 and 32 characters!\nLast Name must be between 1 and 32 characters!\nEmail Address does not appear to be valid!\nTelephone must be between 3 and 32 characters!\nAddress 1 must be between 3 and 128 characters!\nCity must be between 3 and 128 characters!\nZip/postal code must be between 3 and 10 characters!\nPassword must be between 4 and 20 characters!

User Should Be Able To Register With Valid Credentials With Random 10 Lower-Charater Wrong With Email, Region, Country
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Location Should Be    https://automationteststore.com/index.php?rt=account/login
    Click Button    xpath=/html/body/div/div[2]/div/div/div/div/div[1]/div/form/fieldset/button
    ${random_number}=    Evaluate    random.randint(3513, 3612)
    ${random_number1}=    Evaluate    random.randint(1, 239)
    ${random_numbers}=    Generate Random String    10    abcdefghijklmnopqrstuvwxyz
    Input Text    ${firstname_filed}    ${random_numbers}
    Input Text    ${lastname_field}    ${random_numbers}
    Input Text    ${email_field}    ${random_numbers}
    Input Text    ${telephone_field}    ${random_numbers}
    Input Text    ${fax_field}    ${random_numbers}
    Input Text    ${Company_field}    ${random_numbers}
    Input Text    ${Address1_field}    ${random_numbers}
    Input Text    ${Address2_field}    ${random_numbers}
    Input Text    ${city_field}    ${random_numbers}
    Click Element    ${select_region}
    Click Element    xpath=//option[@value='${random_number}']
    Input Text    ${zipcode}    ${random_numbers}
    Click Element    ${select_country}
    Click Element    xpath=//option[@value='${random_number1}']
    Input Text    ${Login_name_filed}    ${random_numbers}
    Input Text    ${Password_field}    ${random_numbers}
    Input Text    ${Password_confirm_filed}    ${random_numbers}
    Click Element    ${Radio1}
    Click Element    ${Radio0}
    Click Element    ${Checkbox}
    Click Element    ${btn_continue_register}
    Element Should Be Visible    ${Error}
    ${Error_text}    Get Text    ${Error}
    Should Be Equal As Strings    ${Error_text}    ×\nEmail Address does not appear to be valid!\nPlease select a region / state!

*** Keywords ***
Set Region Based On Country
    [Arguments]    ${random_number_country}
    ${random1}=    Evaluate    random.randint(1, 32)
    ${random2}=    Evaluate    random.randint(33, 68)
    ${random3}=    Evaluate    random.randint(69, 116)
    ${random4}=    Evaluate    random.randint(117, 121)
    ${random5}=    Evaluate    random.randint(122, 128)
    ${random6}=    Evaluate    random.randint(129, 146)
    ${random7}=    Set Variable    0
    ${random8}=    Set Variable    0
    ${random9}=    Evaluate    random.randint(147, 154)
    ${random10}=    Evaluate    random.randint(155, 179)
    ${random11}=    Evaluate    random.randint(180, 190)
    ${random12}=    Set Variable    0
    ${random13}=    Evaluate    random.randint(191, 198)
    ${random14}=    Evaluate    random.randint(199, 208)
    ${random15}=    Evaluate    random.randint(209, 283)
    ${random16}=    Evaluate    random.randint(284, 314)
    ${random17}=    Evaluate    random.randint(315, 319)
    ${random18}=    Evaluate    random.randint(320, 325)
    ${random19}=    Evaluate    random.randint(326, 336)
    ${random20}=    Evaluate    random.randint(337, 343)
    ${random21}=    Evaluate    random.randint(344, 353)
    ${random22}=    Evaluate    random.randint(354, 359)
    ${random23}=    Evaluate    random.randint(360, 371)
    ${random24}=    Evaluate    random.randint(372, 382)
    ${random25}=    Evaluate    random.randint(383, 402)
    ${random26}=    Evaluate    random.randint(403, 411)
    ${random27}=    Evaluate    random.randint(412, 429)
    ${random28}=    Evaluate    random.randint(430, 439)
    ${random29}=    Set Variable    0
    ${random30}=    Evaluate    random.randint(440, 466)
    ${random31}=    Evaluate    random.randint(467, 474)
    ${random32}=    Evaluate    random.randint(475, 478)
    ${random33}=    Evaluate    random.randint(479, 505)
    ${random34}=    Evaluate    random.randint(506, 550)
    ${random35}=    Evaluate    random.randint(551, 566)
    ${random36}=    Evaluate    random.randint(567, 591)
    ${random37}=    Evaluate    random.randint(592, 601)
    ${random38}=    Evaluate    random.randint(602, 614)
    ${random39}=    Evaluate    random.randint(615, 631)
    ${random40}=    Evaluate    random.randint(632, 639)
    ${random41}=    Evaluate    random.randint(640, 656)
    ${random42}=    Evaluate    random.randint(657, 670)
    ${random43}=    Evaluate    random.randint(671, 683)
    ${random44}=    Evaluate    random.randint(684, 713)
    ${random45}=    Set Variable    0
    ${random46}=    Evaluate    random.randint(715, 719)
    ${random47}=    Evaluate    random.randint(720, 752)
    ${random48}=    Evaluate    random.randint(753, 755)
    ${random49}=    Evaluate    random.randint(756, 766)
    ${random50}=    Evaluate    random.randint(767, 781)
    ${random51}=    Evaluate    random.randint(782, 788)
    ${random52}=    Evaluate    random.randint(789, 846)
    ${random53}=    Evaluate    random.randint(847, 867)
    ${random54}=    Evaluate    random.randint(868, 882)
    ${random55}=    Evaluate    random.randint(883, 888)
    ${random56}=    Evaluate    random.randint(889, 902)
    ${random57}=    Evaluate    random.randint(903, 918)
    ${random58}=    Evaluate    random.randint(919, 923)
    ${random59}=    Evaluate    random.randint(924, 933)
    ${random60}=    Evaluate    random.randint(934, 965)
    ${random61}=    Evaluate    random.randint(966, 978)
    ${random62}=    Evaluate    random.randint(979, 1000)
    ${random63}=    Evaluate    random.randint(1001, 1026)
    ${random64}=    Evaluate    random.randint(1027, 1040)
    ${random65}=    Evaluate    random.randint(1041, 1047)
    ${random66}=    Evaluate    random.randint(1048, 1053)
    ${random67}=    Evaluate    random.randint(1054, 1068)
    ${random68}=    Evaluate    random.randint(1069, 1079)
    ${random69}=    Set Variable    0
    ${random70}=    Set Variable    0
    ${random71}=    Evaluate    random.randint(1080, 1084)
    ${random72}=    Evaluate    random.randint(1085, 1090)
    ${random73}=    Evaluate    random.randint(1091, 1112)
    ${random74}=    Evaluate    random.randint(1113, 1209)
    ${random75}=    Set Variable    0
    ${random76}=    Evaluate    random.randint(1210, 1214)
    ${random77}=    Evaluate    random.randint(1215, 1219)
    ${random78}=    Evaluate    random.randint(1220, 1228)
    ${random79}=    Evaluate    random.randint(1229, 1241)
    ${random80}=    Evaluate    random.randint(1242, 1253)
    ${random81}=    Evaluate    random.randint(1254, 1269)
    ${random82}=    Evaluate    random.randint(1270, 1279)
    ${random83}=    Set Variable    0
    ${random84}=    Evaluate    random.randint(1280, 1292)
    ${random85}=    Evaluate    random.randint(1293, 1295)
    ${random86}=    Evaluate    random.randint(1296, 1303)
    ${random87}=    Set Variable    0
    ${random88}=    Set Variable    0
    ${random89}=    Evaluate    random.randint(1304, 1325)
    ${random90}=    Evaluate    random.randint(1326, 1359)
    ${random91}=    Evaluate    random.randint(1360, 1368)
    ${random92}=    Evaluate    random.randint(1369, 1378)
    ${random93}=    Evaluate    random.randint(1379, 1387)
    ${random94}=    Evaluate    random.randint(1388, 1391)
    ${random95}=    Evaluate    random.randint(1392, 1409)
    ${random96}=    Evaluate    random.randint(1410, 1427)
    ${random97}=    Evaluate    random.randint(1428, 1466)
    ${random98}=    Evaluate    random.randint(1467, 1474)
    ${random99}=    Evaluate    random.randint(1475, 1506)
    ${random100}=    Evaluate    random.randint(1507, 1537)
    ${random101}=    Evaluate    random.randint(1538, 1567)
    ${random102}=    Evaluate    random.randint(1568, 1585)
    ${random103}=    Evaluate    random.randint(1586, 1611)
    ${random104}=    Evaluate    random.randint(1612, 1622)
    ${random105}=    Evaluate    random.randint(3842, 3948)
    ${random106}=    Evaluate    random.randint(1643, 1656)
    ${random107}=    Evaluate    random.randint(1657, 1703)
    ${random108}=    Evaluate    random.randint(1704, 1715)
    ${random109}=    Evaluate    random.randint(1716, 1732)
    ${random110}=    Evaluate    random.randint(1733, 1740)
    ${random111}=    Evaluate    random.randint(1741, 1761)
    ${random113}=    Evaluate    random.randint(1773, 1787)
    ${random114}=    Evaluate    random.randint(1788, 1792)
    ${random115}=    Evaluate    random.randint(1793, 1800)
    ${random116}=    Evaluate    random.randint(1801, 1818)
    ${random117}=    Evaluate    random.randint(1819, 1851)
    ${random118}=    Set Variable    0
    ${random119}=    Evaluate    random.randint(1852, 1861)
    ${random120}=    Evaluate    random.randint(1862, 1874)
    ${random121}=    Evaluate    random.randint(1875, 1899)
    ${random122}=    Evaluate    random.randint(1900, 1910)
    ${random123}=    Evaluate    random.randint(1911, 1920)
    ${random124}=    Evaluate    random.randint(1921, 1932)
    ${random125}=    Evaluate    random.randint(1933, 1937)
    ${random126}=    Set Variable    0
    ${random127}=    Evaluate    random.randint(1938, 1943)
    ${random128}=    Evaluate    random.randint(1944, 1970)
    ${random129}=    Evaluate    random.randint(1971, 1985)
    ${random130}=    Evaluate    random.randint(1986, 2005)
    ${random131}=    Evaluate    random.randint(2006, 2014)
    ${random132}=    Evaluate    random.randint(2015, 2082)
    ${random133}=    Evaluate    random.randint(2083, 2115)
    ${random134}=    Set Variable    0
    ${random135}=    Evaluate    random.randint(2116, 2128)
    ${random136}=    Evaluate    random.randint(2129, 2145)
    ${random137}=    Set Variable    0
    ${random138}=    Evaluate    random.randint(2146, 2176)
    ${random139}=    Evaluate    random.randint(2177, 2180)
    ${random140}=    Evaluate    random.randint(2181, 2191)
    ${random141}=    Evaluate    random.randint(2192, 2195)
    ${random142}=    Evaluate    random.randint(2196, 2217)
    ${random143}=    Evaluate    random.randint(2218, 2220)
    ${random144}=    Evaluate    random.randint(2221, 2262)
    ${random145}=    Evaluate    random.randint(2263, 2273)
    ${random146}=    Evaluate    random.randint(2274, 2287)
    ${random147}=    Evaluate    random.randint(2288, 2300)
    ${random148}=    Evaluate    random.randint(2301, 2314)
    ${random149}=    Evaluate    random.randint(2315, 2328)
    ${random150}=    Evaluate    random.randint(2329, 2340)
    ${random151}=    Set Variable    0
    ${random152}=    Evaluate    random.randint(2341, 2343)
    ${random153}=    Evaluate    random.randint(2344, 2362)
    ${random154}=    Evaluate    random.randint(2363, 2379)
    ${random155}=    Evaluate    random.randint(2380, 2387)
    ${random156}=    Evaluate    random.randint(2388, 2424)
    ${random157}=    Set Variable    0
    ${random158}=    Set Variable    0
    ${random112}=    Evaluate    random.randint(1762, 1772)
    ${random240}=    Evaluate    random.randint(3949, 3954)
    ${random159}=    Evaluate    random.randint(2425, 2428)
    ${random160}=    Evaluate    random.randint(2429, 2448)
    ${random161}=    Evaluate    random.randint(2449, 2456)
    ${random162}=    Evaluate    random.randint(2457, 2462)
    ${random163}=    Evaluate    random.randint(2463, 2478)
    ${random164}=    Evaluate    random.randint(2479, 2488)
    ${random165}=    Evaluate    random.randint(2489, 2508)
    ${random166}=    Evaluate    random.randint(2509, 2526)
    ${random167}=    Evaluate    random.randint(2527, 2551)
    ${random168}=    Evaluate    random.randint(2552, 2630)
    ${random169}=    Set Variable    0
    ${random170}=    Evaluate    random.randint(2631, 2646)
    ${random171}=    Evaluate    random.randint(2649, 2668)
    ${random172}=    Set Variable    0
    ${random173}=    Evaluate    random.randint(2669, 2678)
    ${random174}=    Set Variable    0
    ${random175}=    Evaluate    random.randint(2679, 2720)
    ${random176}=    Evaluate    random.randint(2721, 2808)
    ${random177}=    Evaluate    random.randint(2809, 2820)
    ${random178}=    Evaluate    random.randint(2821, 2834)
    ${random179}=    Evaluate    random.randint(2835, 2845)
    ${random180}=    Evaluate    random.randint(2846, 2851)
    ${random181}=    Evaluate    random.randint(2852, 2862)
    ${random182}=    Evaluate    random.randint(2863, 2871)
    ${random183}=    Evaluate    random.randint(2872, 2873)
    ${random184}=    Evaluate    random.randint(2874, 2886)
    ${random185}=    Evaluate    random.randint(2887, 2897)
    ${random186}=    Evaluate    random.randint(2898, 2920)
    ${random187}=    Evaluate    random.randint(2921, 2924)
    ${random188}=    Set Variable    3967
    ${random189}=    Evaluate    random.randint(2925, 2932)
    ${random190}=    Evaluate    random.randint(3955, 3966)
    ${random191}=    Evaluate    random.randint(2933, 2942)
    ${random192}=    Evaluate    random.randint(2943, 2960)
    ${random193}=    Evaluate    random.randint(2961, 2969)
    ${random194}=    Set Variable    0
    ${random195}=    Evaluate    random.randint(2970, 3021)
    ${random196}=    Evaluate    random.randint(3022, 3030)
    ${random197}=    Evaluate    random.randint(3031, 3033)
    ${random198}=    Evaluate    random.randint(2647, 2648)
    ${random199}=    Evaluate    random.randint(3034, 3059)
    ${random200}=    Evaluate    random.randint(3060, 3069)
    ${random201}=    Set Variable    0
    ${random202}=    Evaluate    random.randint(3070, 3073)
    ${random203}=    Evaluate    random.randint(3074, 3094)
    ${random204}=    Evaluate    random.randint(3095, 3120)
    ${random205}=    Evaluate    random.randint(3121, 3134)
    ${random206}=    Evaluate    random.randint(3135, 3159)
    ${random207}=    Evaluate    random.randint(3160, 3162)
    ${random208}=    Evaluate    random.randint(3163, 3188)
    ${random209}=    Evaluate    random.randint(3189, 3264)
    ${random210}=    Evaluate    random.randint(3265, 3269)
    ${random211}=    Evaluate    random.randint(3270, 3272)
    ${random212}=    Evaluate    random.randint(3273, 3275)
    ${random213}=    Evaluate    random.randint(3276, 3290)
    ${random214}=    Evaluate    random.randint(3291, 3314)
    ${random215}=    Evaluate    random.randint(3315, 3395)
    ${random216}=    Evaluate    random.randint(3396, 3400)
    ${random217}=    Evaluate    random.randint(3401, 3414)
    ${random218}=    Evaluate    random.randint(3415, 3423)
    ${random219}=    Evaluate    random.randint(3424, 3479)
    ${random220}=    Evaluate    random.randint(3480, 3505)
    ${random221}=    Evaluate    random.randint(3506, 3512)
    ${random222}=    Evaluate    random.randint(3513, 3612)
    ${random223}=    Evaluate    random.randint(3613, 3677)
    ${random224}=    Evaluate    random.randint(3678, 3686)
    ${random225}=    Evaluate    random.randint(3687, 3705)
    ${random226}=    Evaluate    random.randint(3706, 3719)
    ${random227}=    Evaluate    random.randint(3720, 3725)
    ${random228}=    Set Variable    0
    ${random229}=    Evaluate    random.randint(3726, 3750)
    ${random230}=    Evaluate    random.randint(3751, 3782)
    ${random231}=    Set Variable    0
    ${random232}=    Evaluate    random.randint(3783, 3785)
    ${random233}=    Evaluate    random.randint(3786, 3788)
    ${random234}=    Set Variable    0
    ${random235}=    Evaluate    random.randint(3789, 3807)
    ${random236}=    Evaluate    random.randint(3808, 3811)
    ${random237}=    Evaluate    random.randint(3812, 3822)
    ${random248}=    Evaluate    random.randint(3823, 3831)
    ${random249}=    Evaluate    random.randint(3832, 3841)
    ${random_number_region}=    Set Variable If    ${random_number_country} == 1    ${random1}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 2    ${random2}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 3    ${random3}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 4    ${random4}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 5    ${random5}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 6    ${random6}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 7    ${random7}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 8    ${random8}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 9    ${random9}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 10    ${random10}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 11    ${random11}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 12    ${random12}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 13    ${random13}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 14    ${random14}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 15    ${random15}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 16    ${random16}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 17    ${random17}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 18    ${random18}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 19    ${random19}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 20    ${random20}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 21    ${random21}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 22    ${random22}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 23    ${random23}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 24    ${random24}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 25    ${random25}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 26    ${random26}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 27    ${random27}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 28    ${random28}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 29    ${random29}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 30    ${random30}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 31    ${random31}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 32    ${random32}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 33    ${random33}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 34    ${random34}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 35    ${random35}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 36    ${random36}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 37    ${random37}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 38    ${random38}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 39    ${random39}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 40    ${random40}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 41    ${random41}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 42    ${random42}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 43    ${random43}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 44    ${random44}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 45    ${random45}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 46    ${random46}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 47    ${random47}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 48    ${random48}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 49    ${random49}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 50    ${random50}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 51    ${random51}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 52    ${random52}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 53    ${random53}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 54    ${random54}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 55    ${random55}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 56    ${random56}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 57    ${random57}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 58    ${random58}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 59    ${random59}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 60    ${random60}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 61    ${random61}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 62    ${random62}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 63    ${random63}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 64    ${random64}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 65    ${random65}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 66    ${random66}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 67    ${random67}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 68    ${random68}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 69    ${random69}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 70    ${random70}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 71    ${random71}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 72    ${random72}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 73    ${random73}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 74    ${random74}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 75    ${random75}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 76    ${random76}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 77    ${random77}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 78    ${random78}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 79    ${random79}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 80    ${random80}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 81    ${random81}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 82    ${random82}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 83    ${random83}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 84    ${random84}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 85    ${random85}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 86    ${random86}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 87    ${random87}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 88    ${random88}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 89    ${random89}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 90    ${random90}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 91    ${random91}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 92    ${random92}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 93    ${random93}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 94    ${random94}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 95    ${random95}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 96    ${random96}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 97    ${random97}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 98    ${random98}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 99    ${random99}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 100    ${random100}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 101    ${random101}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 102    ${random102}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 103    ${random103}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 104    ${random104}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 105    ${random105}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 106    ${random106}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 107    ${random107}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 108    ${random108}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 109    ${random109}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 110    ${random110}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 111    ${random111}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 112    ${random112}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 113    ${random113}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 114    ${random114}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 115    ${random115}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 116    ${random116}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 117    ${random117}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 118    ${random118}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 119    ${random119}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 120    ${random120}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 121    ${random121}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 122    ${random122}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 123    ${random123}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 124    ${random124}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 125    ${random125}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 126    ${random126}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 127    ${random127}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 128    ${random128}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 129    ${random129}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 130    ${random130}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 131    ${random131}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 132    ${random132}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 133    ${random133}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 134    ${random134}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 135    ${random135}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 136    ${random136}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 137    ${random137}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 138    ${random138}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 139    ${random139}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 140    ${random140}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 141    ${random141}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 142    ${random142}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 143    ${random143}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 144    ${random144}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 145    ${random145}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 146    ${random146}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 147    ${random147}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 148    ${random148}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 149    ${random149}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 150    ${random150}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 151    ${random151}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 152    ${random152}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 153    ${random153}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 154    ${random154}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 155    ${random155}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 156    ${random156}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 157    ${random157}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 158    ${random158}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 159    ${random159}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 160    ${random160}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 161    ${random161}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 162    ${random162}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 163    ${random163}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 164    ${random164}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 165    ${random165}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 166    ${random166}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 167    ${random167}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 168    ${random168}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 169    ${random169}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 170    ${random170}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 171    ${random171}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 172    ${random172}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 173    ${random173}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 174    ${random174}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 175    ${random175}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 176    ${random176}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 177    ${random177}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 178    ${random178}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 179    ${random179}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 180    ${random180}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 181    ${random181}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 182    ${random182}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 183    ${random183}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 184    ${random184}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 185    ${random185}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 186    ${random186}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 187    ${random187}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 188    ${random188}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 189    ${random189}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 190    ${random190}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 191    ${random191}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 192    ${random192}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 193    ${random193}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 194    ${random194}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 195    ${random195}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 196    ${random196}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 197    ${random197}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 198    ${random198}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 199    ${random199}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 200    ${random200}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 201    ${random201}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 202    ${random202}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 203    ${random203}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 204    ${random204}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 205    ${random205}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 206    ${random206}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 207    ${random207}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 208    ${random208}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 209    ${random209}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 210    ${random210}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 211    ${random211}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 212    ${random212}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 213    ${random213}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 214    ${random214}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 215    ${random215}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 216    ${random216}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 217    ${random217}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 218    ${random218}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 219    ${random219}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 220    ${random220}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 221    ${random221}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 222    ${random222}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 223    ${random223}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 224    ${random224}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 225    ${random225}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 226    ${random226}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 227    ${random227}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 228    ${random228}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 229    ${random229}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 230    ${random230}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 231    ${random231}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 232    ${random232}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 233    ${random233}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 234    ${random234}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 235    ${random235}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 236    ${random236}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 237    ${random237}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 238    ${random238}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
    ${random_number_region}=    Set Variable If    ${random_number_country} == 239    ${random239}
    Return From Keyword If    ${random_number_region}!= None    ${random_number_region}
