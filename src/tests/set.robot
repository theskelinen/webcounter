*** Settings ***
Resource  resource.robot
Suite Setup  Prepare Test Suite
Suite Teardown  Close Browser

*** Test Cases ***
Setting the counter to a specific value works
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Go To  ${HOME_URL}
    Input Text  id=value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa