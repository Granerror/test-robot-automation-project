*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
TC04 Mark Todo Completed
    Open App
    Add Todo    Complete me
    Click Element    ${CHECK_BUTTON}
    ${state}=    Get Element Attribute    ${CHECK_BUTTON}    checked
    Should Be Equal    ${state}    true
    Close Application
