*** Settings ***
Documentation     test case in Buy product
Library           SeleniumLibrary
Library    DateTime
Library    RequestsLibrary
Library    Collections
Library    random

#Resource   ./variable.robot
Resource   ./keyword.robot

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
    Check out
    Close Browser

TC Buy all available T-shirts to cart
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
    Check out
    Close Browser
TC Buy all available Cheeks to cart
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
    Check out
    Close Browser

TC Buy available Eyes to cart
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
    Check out
    Close Browser

TC Buy available Value Set to cart
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
    Check out
    Close Browser

TC Buy available Face to cart
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
    Check out
    Close Browser

TC Buy all available Lips to cart
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
    Check out
    Close Browser
TC Buy all available Nail to cart
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
    Check out
    Close Browser
TC Buy all available Skin care eyes to cart
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
    Check out
    Close Browser

TC Buy all available Skin care face to cart
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
    Check out
    Close Browser

TC Buy available gift ideas & set to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[3]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=43_45&product_id=94']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Check out
    Close Browser

TC Buy available hands & nails to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[4]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[4]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=43_48&product_id=68']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Check out
    Close Browser

TC Buy all available men fragrance to cart
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
    Check out    
    Close Browser

TC Buy all available women fragrance to cart
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
    Check out
    Close Browser

TC Buy available body shower to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[1]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_63&product_id=75']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Check out
    Close Browser

TC Buy all available fragrance sets to cart
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
    Check out
    Close Browser

TC Buy available shaving cream to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[3]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_61&product_id=98']
    ${random_number_1}    Evaluate    random.randint(1, 10)
    Input Text    //*[@id="product_quantity"]    ${random_number_1}
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Check out
    Close Browser
TC Buy available men skin care to cart
    Open Web
    Login
    Mouse Over    //*[@id="categorymenu"]/nav/ul/li[6]/a
    Click Element    //*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[4]/a
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_60&product_id=96']
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Go To    https://automationteststore.com/index.php?rt=product/category&path=58_60
    Click Element    //a[@href='https://automationteststore.com/index.php?rt=product/product&path=58_60&product_id=76']
    Click Element    //*[@id="product"]/fieldset/div[4]/ul/li/a
    Check out
    Close Browser

TC Buy all available conditioner to cart
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
    Check out
    Close Browser

TC Buy all available shampo to cart
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
    Check out
    Close Browser
TC Buy all available books in cart
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
