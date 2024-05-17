*** Settings ***
Library           SeleniumLibrary
Library           random
Library           String
Library           Collections

*** Variables ***
${BROWSER}        Chrome
${URL}            https://automationteststore.com
${login_field}    id=loginFrm_loginname
${password_field}    id=loginFrm_password
${forgot_passowrd}    xpath=//*[@id="loginFrm"]/fieldset/a[1]
${forgot_login}    xpath=//*[@id="loginFrm"]/fieldset/a[2]
${btn_login}      xpath=//*[@id="loginFrm"]/fieldset/button
${Apparel_accessories}    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/a
@{Apparel_accessories_list}    Shoes    T-shirts
@{shoes_list}     NEW LADIES HIGH WEDGE HEEL TOE THONG DIAMANTE FLIP FLOP SANDALS    WOMENS HIGH HEEL POINT TOE STILETTO SANDALS ANKLE STRAP COURT SHOES    RUBY SHOO WOMENS JADA T-BAR    FIORELLA PURPLE PEEP TOES
@{shirt_list}     JERSEY COTTON STRIPED POLO SHIRT    PRODUCT WITH OPTIONS AND STOCK LOCATIONS    DESIGNER MEN CASUAL FORMAL DOUBLE CUFFS GRANDAD BAND COLLAR SHIRT ELEGANT TIE    FRUIT OF THE LOOM T-SHIRTS 5 PACK - SUPER PREMIUM
@{shirt_list1}    JERSEY COTTON STRIPED POLO SHIRT    PRODUCT WITH OPTIONS AND STOCK LOCATIONS    DESIGNER MEN CASUAL FORMAL DOUBLE CUFFS GRANDAD BAND COLLAR SHIRT ELEGANT TIE    FRUIT OF THE LOOM T-SHIRTS 5 PACK - SUPER PREMIUM    CASUAL 3/4 SLEEVE BASEBALL T-SHIRT
${shoes_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/div/ul[1]/li[1]/a
${shirt_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[2]/div/ul[1]/li[2]/a
${makeup}         xpath=//*[@id="categorymenu"]/nav/ul/li[3]/a
@{makeup_list1}    Cheeks    Eyes    Face    Lips    Nails    Value Sets
@{makeup_list}    L'EXTRÊME INSTANT EXTENSIONS LENGTHENING MASCARA    TROPIQUES MINERALE LOOSE BRONZER    PRODUCT WITH STOCK LOCATIONS    DELICATE OIL-FREE POWDER BLUSH    WATERPROOF PROTECTIVE UNDEREYE CONCEALER    VIVA GLAM LIPSTICK
${cheeks_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[1]/a
@{cheeks_list}    SKINSHEEN BRONZER STICK    TROPIQUES MINERALE LOOSE BRONZER    BENEFIT GIRL MEETS PEARL    BENEFIT BELLA BAMBA
${eyes_xpath}     xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[2]/a
${face_xpath}     xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[3]/a
@{eyes_list}      L'EXTRÊME INSTANT EXTENSIONS LENGTHENING MASCARA    LANCOME HYPNOSE DOLL LASHES MASCARA 4-PIECE GIFT SET    WATERPROOF PROTECTIVE UNDEREYE CONCEALER
@{face_list}      PRODUCT WITH STOCK LOCATIONS    DELICATE OIL-FREE POWDER BLUSH
${lips_xpath}     xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[4]/a
@{lips_list}      LANCOME HYPNOSE DOLL LASHES MASCARA 4-PIECE GIFT SET    VIVA GLAM LIPSTICK    LE ROUGE ABSOLU RESHAPING & REPLENISHING LIPCOLOUR SPF 15
${nails_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[5]/a
@{nails_list}     NAIL LACQUER    FLUID SHINE NAIL POLISH
${skincare_eyes_xpath}    xpath=/html/body/div/div[1]/div[1]/section/nav/ul/li[4]/div/ul[1]/li[1]/a
@{skincare_eyes_list}    EYE MASTER    ABSOLUE EYE PRECIOUS CELLS    EYE REJUVENATING SERUM
${value_set_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[6]/a
@{value_set_list}    COLOR DESIGN EYE BRIGHTENING ALL IN ONE 5 SHADOW & LINER PALETTE    LANCOME HYPNOSE DOLL LASHES MASCARA 4-PIECE GIFT SET
${skincare_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/a
@{skincare_list}    FLASH BRONZER BODY GEL    ABSOLUE EYE PRECIOUS CELLS    CREME PRECIEUSE NUIT 50ML    TOTAL MOISTURE FACIAL CREAM    ABSOLUTE ANTI-AGE SPOT REPLENISHING UNIFYING TREATMENTSPF 15
${VALID_USERNAME}    ThanhDat07
${VALID_PASSWORD}    987654321

*** Test Cases ***
Login And Then Find Product By Group Apparel & Accessories
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${Apparel_accessories}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=68
    Click Element    ${Apparel_accessories}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=68
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    ${xpath1}=    Set Variable    xpath=//div[@class="mt10 align_center"]
    Element Should Be Visible    ${xpath1}
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${product_elements1}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    ${elem1}=    Get WebElements    ${xpath1}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    FOR    ${item}    IN    @{elem1}
        ${product_element1}=    Get Text    ${item}
        Append To List    ${product_elements1}    ${product_element1}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    ${product_elements1}=    Evaluate    [x for x in @{product_elements1} if x]    #Clear list
    Lists Should Be Equal    ${product_elements1}    ${Apparel_accessories_list}
    ${final_list}=    Combine Lists    ${shoes_list}    ${shirt_list}    #Merge List
    Lists Should Be Equal    ${product_elements}    ${final_list}    ignore_order=True
    Close Browser
    Fail    Missing 1 t-shirt product

Login And Then Find Product By Group Apparel & Accessories Having Shoes
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${Apparel_accessories}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=68
    Mouse Over    ${Apparel_accessories}
    Click Element    ${shoes_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=68_69
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${shoes_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Apparel & Accessories Having Shirt
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${Apparel_accessories}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=68
    Mouse Over    ${Apparel_accessories}
    Click Element    ${shirt_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=68_70
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${shirt_list1}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Click Element    ${makeup}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    ${xpath1}=    Set Variable    xpath=//div[@class="mt10 align_center"]
    Element Should Be Visible    ${xpath1}
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${product_elements1}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    ${elem1}=    Get WebElements    ${xpath1}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    FOR    ${item}    IN    @{elem1}
        ${product_element1}=    Get Text    ${item}
        Append To List    ${product_elements1}    ${product_element1}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    ${product_elements1}=    Evaluate    [x for x in @{product_elements1} if x]
    Lists Should Be Equal    ${product_elements1}    ${makeup_list1}    ignore_order=True
    Lists Should Be Equal    ${product_elements}    ${makeup_list}    ignore_order=True
    Close Browser
    Fail    Missing products

Login And Then Find Product By Group Makeup Having Cheeks
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${cheeks_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_40
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${cheeks_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup Having Eyes
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${eyes_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_39
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${eyes_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup Having Face
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${face_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_38
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${face_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup Having Lips
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${lips_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_41
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${lips_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup Having Nails
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${nails_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_42
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${nails_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Makeup Having Value Set
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${makeup}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=36
    Mouse Over    ${makeup}
    Click Element    ${value_set_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=36_37
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${value_set_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Skincare
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Click Element    ${skincare_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${skincare_list}    ignore_order=True
    Close Browser
    Fail    Missing products

Login And Then Find Product By Group Skincare Having Eyes
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Mouse Over    ${skincare_xpath}
    Wait Until Element Is Visible    ${skincare_eyes_xpath}
    Click Element    ${skincare_eyes_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_47
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${skincare_eyes_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Skincare Having Face
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Mouse Over    ${skincare_xpath}
    Wait Until Element Is Visible    ${skincare_eyes_xpath}
    Click Element    ${skincare_eyes_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_47
    Wait Until Page Contains Element    xpath=//a[@class="prdocutname"]
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${product_elements}    ${skincare_eyes_list}    ignore_order=True
    Close Browser
