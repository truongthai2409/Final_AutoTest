*** Settings ***
Documentation     test case in updte 10 product
Library           SeleniumLibrary
Library    DateTime
Library    RequestsLibrary
Library    Collections
Library    random

*** Variables ***
${url}              https://automationteststore.com/
${url_index}        https://www.saucedemo.com/inventory.html
${browser}          Chrome
@{ID_SHOES}         116    118    115    117
@{ID_T_SHIRT}       121     123
@{ID_CHEEK}         50      53      52
@{ID_LIPs}          59      55
@{ID_NAIL}          60      99
@{ID_SKINCARE_EYE}  65      96
@{ID_SHAMPOO}       70      74
@{ID_PAPERBACK}     113     114
@{ID_SKINCARE_FACE}     109      91     92      93      66
@{ID_MEN_FRAGRANCE}     62      63      81      82      86
@{ID_WOMEN_FRAGRANCE}   102     106     110     105     85      104     84      89      90      64      79      88
@{ID_FRAGRANCE_SETS}    78      90      82      86
@{ID_CONDITIONER}       69      101     73      71      72

*** Test Cases ***
TC Buy all available Shoes to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=68_69&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[2]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[2]/div/ul[1]/li[1]/a
    FOR    ${product_url}    IN    @{ID_SHOES}
        Click Element    //a[@href='${base_url}${product_url}']
        Check shoes     ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=68_69
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available T-shirts to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=68_70&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[2]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[2]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_T_SHIRT}
        Click Element    //a[@href='${base_url}${product_url}']
        Check T-Shirt     ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=68_70
    END
    Up date 10 product
    Check out
    Close Browser
TC Buy and update 10 product all available Cheeks to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=36_40&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[1]
    FOR    ${product_url}    IN    @{ID_CHEEK}
        Click Element    //a[@href='${base_url}${product_url}']
        Check Cheeks    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=36_40
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available Eyes to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[2]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=36_39&product_id=56']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    ${random_number}    Evaluate    random.randint(654, 659)
    Select From List By Value    option[319]    ${random_number}
    Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available Value Set to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[6]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=36_37&product_id=61']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    ${random_number}    Evaluate    random.randint(625, 627)
    Select From List By Value    option[308]    ${random_number}
    Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available Face to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[3]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=36_38&product_id=57']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    ${random_number}    Evaluate    random.randint(612, 614)
    Select From List By Value    option[304]    ${random_number}
    Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available Lips to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=36_41&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[4]/a
    FOR    ${product_url}    IN    @{ID_LIPs}
        Click Element    //a[@href='${base_url}${product_url}']
        Check Lips    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=36_41
    END
    Up date 10 product
    Check out
    Close Browser
TC Buy and update 10 product all available Nail to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=36_42&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[3]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[5]/a
    FOR    ${product_url}    IN    @{ID_NAIL}
        Click Element    //a[@href='${base_url}${product_url}']
        Check Nails    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=36_42
    END
    Up date 10 product
    Check out
    Close Browser
TC Buy and update 10 product all available Skin care eyes to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=43_47&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[1]/a
    FOR    ${product_url}    IN    @{ID_SKINCARE_EYE}
        Click Element    //a[@href='${base_url}${product_url}']
        Check Skin Care Eyes    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=43_47
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available Skin care face to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=43_46&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_SKINCARE_FACE}
        Click Element    //a[@href='${base_url}${product_url}']
        Check Skin Care Face    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=43_46
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available gift ideas & set to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[3]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=43_45&product_id=94']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available hands & nails to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[4]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=43_48&product_id=68']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available men fragrance to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=49_51&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[5]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[5]/div/ul[1]/li[1]/a
    FOR    ${product_url}    IN    @{ID_MEN_FRAGRANCE}
        Click Element    //a[@href='${base_url}${product_url}']
        Check men fragrance    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=49_51
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available women fragrance to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=49_50&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[5]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[5]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_WOMEN_FRAGRANCE}
        Click Element    //a[@href='${base_url}${product_url}']
        Check women fragrance    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=49_50
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available body shower to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[1]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_63&product_id=75']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available fragrance sets to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=58_59&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_FRAGRANCE_SETS}
        Click Element    //a[@href='${base_url}${product_url}']
        Check fragrance sets    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=58_59
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product available shaving cream to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[3]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_61&product_id=98']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Up date 10 product
    Check out
    Close Browser
TC Buy and update 10 product available men skin care to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[4]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_60&product_id=96']
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Go To    https://automationteststore.com/index.php?rt=product/category&path=58_60
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_60&product_id=76']
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available conditioner in cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=52_54&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[7]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[7]/div/ul[1]/li[1]/a
    FOR    ${product_url}    IN    @{ID_CONDITIONER}
        Click Element    //a[@href='${base_url}${product_url}']
        Check conditioner    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=52_54
    END
    Up date 10 product
    Check out
    Close Browser

TC Buy and update 10 product all available shampo to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=52_53&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[7]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[7]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_SHAMPOO}
        Click Element    //a[@href='${base_url}${product_url}']
        Check shampoo    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=52_53
    END
    Up date 10 product
    Check out
    Close Browser
TC Buy and update 10 product all available books to cart
    ${base_url}     Set Variable     https://automationteststore.com/index.php?rt=product/product&path=65_67&product_id=
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[8]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[8]/div/ul[1]/li[2]/a
    FOR    ${product_url}    IN    @{ID_PAPERBACK}
        Click Element    //a[@href='${base_url}${product_url}']
        Check books    ${product_url}
        Go To    https://automationteststore.com/index.php?rt=product/category&path=65_67
    END
    Up date 10 product
    Check out
    Close Browser
TC reset cart
    Open Web
    Login
    Click Element    //*[@id="main_menu_top"]/li[3]/a
    ${row_elements}=    Get WebElements    //*[@id="cart"]/div/div[1]/table/tbody/tr
    ${row_count}=    Get Length    ${row_elements}
    FOR    ${counter}    IN RANGE    1    ${row_count}
        Click Element    //*[@id="cart"]/div/div[1]/table/tbody/tr[2]/td[7]/a
        Sleep    2
    END
    Close Browser
*** Keywords ***
Open Web
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Up date 10 product
    Click Element    //*[@id="main_menu_top"]/li[3]/a
    ${row_elements}=    Get WebElements    //*[@id="cart"]/div/div[1]/table/tbody/tr
    ${row_count}=    Get Length    ${row_elements}
    ${quantity_ids}=    Get WebElements    xpath=//td[@class='align_center']//input[contains(@name, 'quantity')]
    FOR    ${element}    IN    @{quantity_ids}
        Log    ${element}
        Input Text    ${element}    10
    END
    Click Element    //*[@id="cart_update"]
Login
    Click Element    //*[@id="customer_menu_top"]/li/a
    Input Text    //*[@id="loginFrm_loginname"]    truongthai
    Input Password    //*[@id="loginFrm_password"]    0364529228
    Click Button    //*[@id="loginFrm"]/fieldset/button
Check out
    Click Element    //*[@id="main_menu_top"]/li[4]/a
    Click Element    //*[@id="checkout_btn"]
    Wait Until Element Is Visible    //*[@id="maincontainer"]/div/div/div/div/section/p[5]
    ${text}=    Get Text    //*[@id="maincontainer"]/div/div/div/div/section/p[5]
    Should Be Equal As Strings    ${text}     Thank you for shopping with us!
Check shoes
    [Arguments]     ${id}
    IF    ${id} == 116
        ${random_number}    Evaluate    random.randint(747, 750)
        Select Radio Button    option[344][]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
    IF    ${id} == 118
        ${random_number}    Evaluate    random.randint(763, 767)
        Select Radio Button    option[347][]    ${random_number}
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 115
        ${random_number}    Evaluate    random.randint(741, 745)
        Select From List By Value    option[342]    ${random_number}
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 117
        ${random_number}    Evaluate    random.randint(755, 761)
        Select From List By Value    option[346]    ${random_number}
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
# --------------
Check T-Shirt
    [Arguments]     ${id}
    IF    ${id} == 121
        ${random_number}    Evaluate    random.randint(774, 775)
        Select From List By Value     option[350]    ${random_number}
        Select From List By Value     option[351]    777
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
    IF    ${id} == 123
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
Check Cheeks
    [Arguments]     ${id}
    IF    ${id} == 50
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 52
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 53
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        ${random_number}    Evaluate    random.randint(652, 653)
        Select From List By Value     option[318]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END

Check Lips
    [Arguments]     ${id}
    IF    ${id} == 59
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        ${random_number}    Evaluate    random.randint(615, 617)
        Select From List By Value     option[305]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 55
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        ${random_number}    Evaluate    random.randint(618, 621)
        Select From List By Value     option[306]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
Check Nails
    [Arguments]     ${id}
    IF    ${id} == 60
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        ${random_number}    Evaluate    random.randint(622, 623)
        Select From List By Value     option[307]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 99
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        ${random_number}    Evaluate    random.randint(678, 679)
        Select From List By Value     option[327]    ${random_number}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
Check Skin Care Eyes
    [Arguments]     ${id}
    IF    ${id} == 65
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 96
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check Skin Care Face
    [Arguments]     ${id}
    IF    ${id} == 109
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 91
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 92
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 93
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 66
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check men fragrance
    [Arguments]     ${id}
    IF    ${id} == 62
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 63
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 81
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 82
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 86
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check women fragrance
    [Arguments]     ${id}
    IF    ${id} == 102
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 106
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
    IF    ${id} == 110
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 105
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="option335721"]
        Click Element    //*[@id="option336"]
        Click Element    //*[@id="product"]/fieldset/div[7]/ul/li/a
    END
    IF    ${id} == 85
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 104
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="option332"]
        Click Element    //*[@id="product"]/fieldset/div[6]/ul/li/a
    END
    IF    ${id} == 84
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 89
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 90
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 64
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 79
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 88
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check fragrance sets
    [Arguments]     ${id}
    IF    ${id} == 78
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END

    IF    ${id} == 82
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 90
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 86
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check conditioner
    [Arguments]     ${id}
    IF    ${id} == 69
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 101
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[5]/ul/li/a
    END
    IF    ${id} == 73
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 71
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 72
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
Check shampoo
    [Arguments]     ${id}
    IF    ${id} == 70
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 74
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END

Check books
    [Arguments]     ${id}
    IF    ${id} == 113
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END
    IF    ${id} == 114
        ${random_number_1}    Evaluate    random.randint(1, 10)
        Input Text    //*[@id="product_quantity"]    ${random_number_1}
        Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    END