*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
TC02 Edit Existing Todo
    Open App
    Add Todo    Task A
    Edit First Todo    Updated Task A
    ${text}=    Get First Todo Text
    Should Be Equal    ${text}    Updated Task A
    Close Application
