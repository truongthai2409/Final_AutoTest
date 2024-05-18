*** Settings ***
Documentation     Do exercice midterm
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
TC connect facebook
    Open Web
    Login
    Click Element    /html/body/div/header/div[2]/div/div[4]/div/div/a[1]

TC connect twitter
    Open Web
    Login
    Click Element    /html/body/div/header/div[2]/div/div[4]/div/div/a[2]

TC connect linkedin
    Open Web
    Login
    Click Element    /html/body/div/header/div[2]/div/div[4]/div/div/a[3]\
TC connect facebook in footer
    Open Web
    Login
    Click Element    //*[@id="footer"]/footer/section[2]/div/div[2]/div/div/a[1]
TC connect twitter in footer
    Open Web
    Login
    Click Element    //*[@id="footer"]/footer/section[2]/div/div[2]/div/div/a[2]
TC connect linkedin in footer
    Open Web
    Login
    Click Element    //*[@id="footer"]/footer/section[2]/div/div[2]/div/div/a[3]

*** Keywords ***
Open Web
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Login
    Click Element    //*[@id="customer_menu_top"]/li/a
    Input Text    //*[@id="loginFrm_loginname"]    truongthai
    Input Password    //*[@id="loginFrm_password"]    0364529228
    Click Button    //*[@id="loginFrm"]/fieldset/button