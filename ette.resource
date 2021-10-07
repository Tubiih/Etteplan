*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.etteplan.com/fi
${BROWSER}    Chrome
${SEARCH}     robotiikka

*** Keywords ***
Open Browser to Login Page
    Open Browser      ${URL}    ${BROWSER}
    Maximize Browser Window

Click through sections
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[1]/a
    Title Should Be      Palvelumme | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[2]/a
    Title Should Be      Ratkaisut yritysten tarpeisiin | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[3]/a
    Title Should Be      Referenssit | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[4]/a
    Title Should Be      Careers with a difference | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[5]/a 
    Title Should Be      Sijoittajat | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[6]/a
    Title Should Be      Tietoa meistä | Etteplan
    Click Element        //*[@id="block-primary-navigation-new"]/ul/li[7]/a   
    Title Should Be      Ota meihin yhteyttä | Etteplan

    ${TITLE} =     Get Title
    Log    ${TITLE}

Go to jobs
    Mouse Over             //*[@id="block-primary-navigation-new"]/ul/li[4]/a
    Click Element          //*[@id="block-primary-navigation-new"]/ul/li[4]/div/ul/li[1]/a
    Title Should Be        Avoimet työpaikat | Etteplan
    Wait Until Element Is Visible    //*[@id="AllOpenPositions"]/div/form/div[2]/div
    Click Element          //*[@id="AllOpenPositions"]/div/form/div[2]/div/div/div[1]/div[1]
    Click Element          //*[@id="AllOpenPositions"]/div/div/div/div[2]/div[1]/a

Search for something
    Go to main Page
    Input Text             id:edit-keys    ${SEARCH}
    Click Element          id:edit-submit
    Page Should Contain    automaatio ja robotiikka

Go to main Page
    Go To                  ${URL}
    
Change language to english
    Click Element          //*[@id="site-header"]/div[1]/div/nav/div[2]/div/span[2]
    Click Element          //*[@id="site-header"]/div[1]/div/nav/div[2]/ul/li[1]/a
    Page Should Contain    What makes us different

Open contacts window
    Click Element          //*[@id="block-primary-navigation-new"]/ul/li[7]/a
    Page Should Contain    Tekniikantie 4 D

Navigate to about us
    Click Element          //*[@id="block-primary-navigation-new"]/ul/li[6]/a

Click Etteplan logo
    Click Element          //*[@id="block-etteplan-branding"]/a/img