*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser to Login Page
    Open Browser   https://www.etteplan.com/fi   Chrome
    Maximize Browser Window

Go to jobs
    Mouse Over             //*[@id="block-primary-navigation-new"]/ul/li[4]/a
    Click Element          //*[@id="block-primary-navigation-new"]/ul/li[4]/div/ul/li[1]/a
    Title Should Be        Avoimet työpaikat | Etteplan
    Wait Until Element Is Visible    //*[@id="AllOpenPositions"]/div/form/div[2]/div
    Click Element          //*[@id="AllOpenPositions"]/div/form/div[2]/div/div/div[1]/div[1]
    Click Element          //*[@id="AllOpenPositions"]/div/div/div/div[2]/div[1]/a

Search for something
    Go to main Page
    Input Text             id:edit-keys    robotiikka
    Click Element          id:edit-submit
    Page Should Contain    automaatio ja robotiikka

Go to main Page
    Go To                  https://www.etteplan.com/fi
Change language to english
    Click Element          //*[@id="site-header"]/div[1]/div/nav/div[2]/div/span[2]
    Click Element          //*[@id="site-header"]/div[1]/div/nav/div[2]/ul/li[1]/a
    Page Should Contain    What makes us different

Open contacts window
    Click Element          //*[@id="block-primary-navigation-new"]/ul/li[7]/a
    Page Should Contain    Tekniikantie 4 D