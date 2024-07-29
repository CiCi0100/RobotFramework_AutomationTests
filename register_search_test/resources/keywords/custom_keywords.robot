*** Settings ***
Library            SeleniumLibrary
Library            FakerLibrary    
Resource           ../variables/variables.robot

*** Keywords ***

Abrir Browser
    Open Browser    browser=chrome    options=add_experimental_option("detach", True)

Fechar Browser
    Capture Page Screenshot
    Close Browser

Acess Home Page
    Go To    ${HOME_PAGE}
    Maximize Browser Window

Input email for create an account
    Click Element       //a[@class='login'][contains(.,'Sign in')]
    Wait Until Element Is Visible    //input[@type='text'][contains(@id,'create')]
    ${Email}    FakerLibrary.Email
    Input Text        //input[@type='text'][contains(@id,'create')]    ${Email}    
    Click Element    //span[contains(.,'Create an account')]

Create an account
    Wait Until Element Is Visible   //h3[@class='page-subheading'][contains(.,'Your personal information')]
    Click Element                  //input[@type='radio'][contains(@id,'gender1')]
    ${Name}        FakerLibrary.Name Male
    Input Text                    //input[@type='text'][contains(@id,'firstname')]    ${Name}
    ${LastName}    FakerLibrary.Last Name Male
    Input Text                    //input[@type='text'][contains(@id,'lastname')]    ${LastName}
    ${Password}    FakerLibrary.Password
    Input Text                   //input[contains(@type,'password')]    ${Password}
    ${Day}         FakerLibrary.Day Of Month
    Select From List By Index    //select[contains(@name,'days')]    ${Day}
    ${Month}       FakerLibrary.Month
    Select From List By Index    //select[contains(@name,'months')]    ${Month}
    ${Year}        FakerLibrary.Year
    Select From List By Value   //select[@name='years']    ${Year}
    Click Element               //span[contains(.,'Register')]

Check the page title
    Title Should Be    My account - My Shop
Search for Product
    Wait Until Element Is Visible    //input[@class='search_query form-control ac_input'][contains(@id,'top')]
    Input Text                      //input[@class='search_query form-control ac_input'][contains(@id,'top')]    ${PRODUCT}
    Click Button                   //button[@type='submit'][contains(.,'Search')]

Verify Search Results
    Wait Until Element Is Visible    //span[@class='lighter'][contains(.,'"${PRODUCT}"')]