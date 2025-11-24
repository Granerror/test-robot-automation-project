*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
TC05 Data Persistence After Restart
    Open App
    Add Todo    Persist me
    Close Application

    Open App
    ${text}=    Get First Todo Text
    Should Be Equal    ${text}    Persist me
    Close Application
