*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Resetting the counter works
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa