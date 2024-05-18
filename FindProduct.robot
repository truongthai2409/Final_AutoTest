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
${skincare_face_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[2]/a
@{skincare_face_list}    LANCOME VISIONNAIRE ADVANCED SKIN CORRECTOR    JASMIN NOIR BODY LOTION 6.8 FL OZ    BODY CREAM BY BULGARI    CREME PRECIEUSE NUIT 50ML    TOTAL MOISTURE FACIAL CREAM
${value_set_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[3]/div/ul[1]/li[6]/a
@{value_set_list}    COLOR DESIGN EYE BRIGHTENING ALL IN ONE 5 SHADOW & LINER PALETTE    LANCOME HYPNOSE DOLL LASHES MASCARA 4-PIECE GIFT SET
${skincare_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/a
@{skincare_list}    FLASH BRONZER BODY GEL    ABSOLUE EYE PRECIOUS CELLS    CREME PRECIEUSE NUIT 50ML    TOTAL MOISTURE FACIAL CREAM    ABSOLUTE ANTI-AGE SPOT REPLENISHING UNIFYING TREATMENTSPF 15
${gift_idea_and_sets_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[3]/a
@{gift_idea_and_sets_list}    LANCOME SLIMISSIME 360 SLIMMING ACTIVATING CONCENTRATE UNISEX TREATMENT    SKIN MINERALS FOR MEN CLEANSING CREAM    LANCOME HYPNOSE DOLL LASHES MASCARA 4-PIECE GIFT SET    NIGHT CARE CREMA NERA OBSIDIAN MINERAL COMPLEX
${hands_nail_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[4]/a
@{hands_nail_list}    ABSOLUTE ANTI-AGE SPOT REPLENISHING UNIFYING TREATMENTSPF 15
${sun_xpath}      xpath=//*[@id="categorymenu"]/nav/ul/li[4]/div/ul[1]/li[5]/a
@{sun_list}       FLASH BRONZER BODY GEL
${fragrance_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[5]/a
@{fragrance_list1}    Men    Women
@{fragrance_list}    CK ONE SHOCK FOR HIM DEODORANT    GUCCI GUILTY    OMNIA EAU DE TOILETTE 65ML    FORBIDDEN EUPHORIA EAU DE PARFUM SPRAY    ACQUA DI GIO POUR HOMME    CALVIN KLEIN OBSESSION FOR WOMEN EDP SPRAY    ARMANI CODE POUR FEMME    SECRET OBSESSION PERFUME    BEAUTY EAU DE PARFUM
${men_xpath}      xpath=//*[@id="categorymenu"]/nav/ul/li[5]/div/ul[1]/li[1]/a
${men_xpath1}     xpath=//*[@id="categorymenu"]/nav/ul/li[6]/a
@{men_list1}      Body & Shower    Fragrance Sets    Pre-Shave & Shaving    Skincare
@{men_list2}      CK IN2U EAU DE TOILETTE SPRAY FOR HIM    MEN+CARE ACTIVE CLEAN SHOWER TOOL    MEN+CARE CLEAN COMFORT DEODORANT    DOVE MEN +CARE BODY WASH
@{men_list}       CK ONE SHOCK FOR HIM DEODORANT    POUR HOMME EAU DE TOILETTE    ARMANI CODE SPORT    MAN EAU DE TOILETTE SPRAY    ACQUA DI GIO POUR HOMME    ARMANI EAU DE TOILETTE SPRAY    ARMANI CODE AFTER SHAVE BALM    EUPHORIA MEN INTENSE EAU DE TOILETTE SPRAY
${women_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[5]/div/ul[1]/li[2]/a
@{women_list}     GUCCI GUILTY    OMNIA EAU DE TOILETTE 65ML    FLORA BY GUCCI EAU FRAICHE    BVLGARI AQUA    FORBIDDEN EUPHORIA EAU DE PARFUM SPRAY    CALVIN KLEIN OBSESSION FOR WOMEN EDP SPRAY    ARMANI CODE POUR FEMME    SECRET OBSESSION PERFUME    OBSESSION NIGHT PERFUME    BEAUTY EAU DE PARFUM    CK ONE GIFT SET    CK ONE SUMMER 3.4 OZ
${body_shower_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[1]/a
@{body_shower_list}    LANCOME SLIMISSIME 360 SLIMMING ACTIVATING CONCENTRATE UNISEX TREATMENT    MEN+CARE ACTIVE CLEAN SHOWER TOOL    DOVE MEN +CARE BODY WASH
${fragrance_set_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[2]/a
@{fragrance_set_list}    CK IN2U EAU DE TOILETTE SPRAY FOR HIM    MAN EAU DE TOILETTE SPRAY    OBSESSION NIGHT PERFUME    ARMANI CODE AFTER SHAVE BALM    EUPHORIA MEN INTENSE EAU DE TOILETTE SPRAY
${PRE_SHAVE_SHAVING_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[3]/a
@{PRE_SHAVE_SHAVING_list}    SHAVING CREAM
${men_skincare_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[6]/div/ul[1]/li[4]/a
@{men_skincare_list}    EYE MASTER    SKIN MINERALS FOR MEN CLEANSING CREAM    MEN+CARE ACTIVE CLEAN SHOWER TOOL    MEN+CARE CLEAN COMFORT DEODORANT
${hair_care_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[7]/a
@{hair_care_list1}    Conditioner    Shampoo
@{hair_care_list}    SEAWEED CONDITIONER    EAU PARFUMEE AU THE VERT SHAMPOO    CURLS TO STRAIGHT SHAMPOO    PANTENE PRO-V CONDITIONER, CLASSIC CARE
${conditioner_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[7]/div/ul[1]/li[1]/a
@{conditioner_list}    SEAWEED CONDITIONER    PRO-V COLOR HAIR SOLUTIONS COLOR PRESERVE SHINE CONDITIONER    HIGHLIGHTING EXPRESSIONS    BRUNETTE EXPRESSIONS CONDITIONER    PANTENE PRO-V CONDITIONER, CLASSIC CARE
${SHAMPOO_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[7]/div/ul[1]/li[2]/a
@{SHAMPOO_list}    EAU PARFUMEE AU THE VERT SHAMPOO    CURLS TO STRAIGHT SHAMPOO
${book_xpath}     xpath=//*[@id="categorymenu"]/nav/ul/li[8]/a
@{book_list1}     Audio CD    Paperback
@{book_list}      PAPER TOWNS BY JOHN GREEN    THE MIRACLE MORNING: THE NOT-SO-OBVIOUS SECRET GUARANTEED TO TRANSFORM YOUR LIFE    NEW FRENCH WITH EASE (1 BOOK + 1 MP3 CD)    ALLEGIANT BY VERONICA ROTH
${audio_cd_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[8]/div/ul[1]/li[1]/a
@{audio_cd_list}    NEW FRENCH WITH EASE (1 BOOK + 1 MP3 CD)
${PAPERBACK_xpath}    xpath=//*[@id="categorymenu"]/nav/ul/li[8]/div/ul[1]/li[2]/a
@{PAPERBACK_list}    PAPER TOWNS BY JOHN GREEN    THE MIRACLE MORNING: THE NOT-SO-OBVIOUS SECRET GUARANTEED TO TRANSFORM YOUR LIFE    ALLEGIANT BY VERONICA ROTH
${search_input_xpath}    xpath=//*[@id="filter_keyword"]
${search_btn}     xpath=//*[@id="search_form"]/div/div
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
    Wait Until Element Is Visible    ${skincare_face_xpath}
    Click Element    ${skincare_face_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_46
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
    Lists Should Be Equal    ${product_elements}    ${skincare_face_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Skincare Having Gift Ideas And Sets
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Mouse Over    ${skincare_xpath}
    Wait Until Element Is Visible    ${gift_idea_and_sets_xpath}
    Click Element    ${gift_idea_and_sets_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_45
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
    Lists Should Be Equal    ${product_elements}    ${gift_idea_and_sets_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Skincare Having Hands And Nails
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Mouse Over    ${skincare_xpath}
    Wait Until Element Is Visible    ${hands_nail_xpath}
    Click Element    ${hands_nail_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_48
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
    Lists Should Be Equal    ${product_elements}    ${hands_nail_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Skincare Having Sun
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${skincare_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=43
    Mouse Over    ${skincare_xpath}
    Wait Until Element Is Visible    ${sun_xpath}
    Click Element    ${sun_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=43_44
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
    Lists Should Be Equal    ${product_elements}    ${sun_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Fragrance
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${fragrance_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=49
    Click Element    ${fragrance_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=49
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
    Lists Should Be Equal    ${product_elements1}    ${fragrance_list1}
    Lists Should Be Equal    ${product_elements}    ${fragrance_list}    ignore_order=True
    Close Browser
    Fail    Missing Product

Login And Then Find Product By Group Fragrance Having Men
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${fragrance_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=49
    Mouse Over    ${fragrance_xpath}
    Wait Until Element Is Visible    ${men_xpath}
    Click Element    ${men_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=49_51
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
    Lists Should Be Equal    ${product_elements}    ${men_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Fragrance Having Women
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${fragrance_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=49
    Mouse Over    ${fragrance_xpath}
    Wait Until Element Is Visible    ${women_xpath}
    Click Element    ${women_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=49_50
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
    Lists Should Be Equal    ${product_elements}    ${women_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Men
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${men_xpath1}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=58
    Click Element    ${men_xpath1}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=58
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
    Lists Should Be Equal    ${product_elements1}    ${men_list1}
    Log Many    ${product_elements1}
    Log Many    ${men_list1}
    Lists Should Be Equal    ${product_elements}    ${men_list2}    ignore_order=True
    Close Browser
    Fail    Missing Product

Login And Then Find Product By Group Men Having Body & Shower
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${men_xpath1}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=58
    Mouse Over    ${men_xpath1}
    Wait Until Element Is Visible    ${body_shower_xpath}
    Click Element    ${body_shower_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=58_63
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
    Lists Should Be Equal    ${product_elements}    ${body_shower_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Men Having FRAGRANCE SETS
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${men_xpath1}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=58
    Mouse Over    ${men_xpath1}
    Wait Until Element Is Visible    ${fragrance_set_xpath}
    Click Element    ${fragrance_set_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=58_59
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
    Lists Should Be Equal    ${product_elements}    ${fragrance_set_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Men Having PRE-SHAVE & SHAVING
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${men_xpath1}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=58
    Mouse Over    ${men_xpath1}
    Wait Until Element Is Visible    ${PRE_SHAVE_SHAVING_xpath}
    Click Element    ${PRE_SHAVE_SHAVING_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=58_61
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
    Lists Should Be Equal    ${product_elements}    ${PRE_SHAVE_SHAVING_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Men Having SKINCARE
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${men_xpath1}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=58
    Mouse Over    ${men_xpath1}
    Wait Until Element Is Visible    ${men_skincare_xpath}
    Click Element    ${men_skincare_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=58_60
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
    Lists Should Be Equal    ${product_elements}    ${men_skincare_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Hair Care
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${hair_care_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=52
    Click Element    ${hair_care_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=52
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
    Lists Should Be Equal    ${product_elements1}    ${hair_care_list1}
    Lists Should Be Equal    ${product_elements}    ${hair_care_list}    ignore_order=True
    Close Browser
    Fail    Missing Product

Login And Then Find Product By Group Hair Care Having CONDITIONER
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${hair_care_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=52
    Mouse Over    ${hair_care_xpath}
    Wait Until Element Is Visible    ${conditioner_xpath}
    Click Element    ${conditioner_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=52_54
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
    Lists Should Be Equal    ${product_elements}    ${conditioner_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Hair Care Having SHAMPOO
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${hair_care_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=52
    Mouse Over    ${hair_care_xpath}
    Wait Until Element Is Visible    ${SHAMPOO_xpath}
    Click Element    ${SHAMPOO_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=52_53
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
    Lists Should Be Equal    ${product_elements}    ${SHAMPOO_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Book
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${book_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=65
    Click Element    ${book_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=65
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
    Lists Should Be Equal    ${product_elements1}    ${book_list1}
    Lists Should Be Equal    ${product_elements}    ${book_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Book Having AUDIO CD
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${book_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=65
    Mouse Over    ${book_xpath}
    Wait Until Element Is Visible    ${audio_cd_xpath}
    Click Element    ${audio_cd_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=65_66
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
    Lists Should Be Equal    ${product_elements}    ${audio_cd_list}    ignore_order=True
    Close Browser

Login And Then Find Product By Group Book Having PAPERBACK
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    ${href} =    Get Element Attribute    ${book_xpath}    href
    Should Be Equal As Strings    ${href}    https://automationteststore.com/index.php?rt=product/category&path=65
    Mouse Over    ${book_xpath}
    Wait Until Element Is Visible    ${PAPERBACK_xpath}
    Click Element    ${PAPERBACK_xpath}
    Location Should Be    https://automationteststore.com/index.php?rt=product/category&path=65_67
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
    Lists Should Be Equal    ${product_elements}    ${PAPERBACK_list}    ignore_order=True
    Close Browser

Search using search box with relative valueer
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    Element Should Be Visible    ${search_input_xpath}
    Element Should Be Visible    ${search_btn}
    Input Text    ${search_input_xpath}    NEW
    Click Element    ${search_btn}
    ${result}    Create List
    Append To List    ${result}    NEW LADIES HIGH WEDGE HEEL TOE THONG DIAMANTE FLIP FLOP SANDALS
    Append To List    ${result}    NEW FRENCH WITH EASE (1 BOOK + 1 MP3 CD)
    ${xpath}=    Set Variable    xpath=//a[@class="prdocutname"]
    Element Should Be Visible    ${xpath}
    ${product_elements}=    Create List
    ${elem}=    Get WebElements    ${xpath}
    FOR    ${item}    IN    @{elem}
        ${product_element}=    Get Text    ${item}
        Append To List    ${product_elements}    ${product_element}
    END
    ${product_elements}=    Evaluate    [x for x in @{product_elements} if x]    #Clear list
    Lists Should Be Equal    ${result}    ${product_elements}
    Close Browser

Search using search box with absolute value
    Open Browser    ${URL}    ${BROWSER}
    Click Element    xpath=/html/body/div/header/div[1]/div/div[2]/div/div[2]/div/ul/li/a
    Input Text    ${login_field}    ${VALID_USERNAME}
    Input Password    ${password_field}    ${VALID_PASSWORD}
    Click Button    ${btn_login}
    Location Should Be    https://automationteststore.com/index.php?rt=account/account
    Element Should Be Visible    ${search_input_xpath}
    Element Should Be Visible    ${search_btn}
    Input Text    ${search_input_xpath}    NEW LADIES HIGH WEDGE HEEL TOE THONG DIAMANTE FLIP FLOP SANDALS
    Click Element    ${search_btn}
    ${result}    Set Variable    New Ladies High Wedge Heel Toe Thong Diamante Flip Flop Sandals
    ${text}    Get Text    xpath=//*[@id="product_details"]/div/div[2]/div/div/h1/span
    Should Be Equal As Strings    ${result}    ${text}
    Close Browser
