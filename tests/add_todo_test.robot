*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
TC01 Add New Todo
    Open App
    Add Todo    Buy milk
    ${text}=    Get First Todo Text
    Should Be Equal    ${text}    Buy milk
    Close Application
