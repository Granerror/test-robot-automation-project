*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
TC03 Delete Todo
    Open App
    Add Todo    Temp Task
    Delete First Todo
    ${items}=    Get Webelements    ${TODO_LIST}
    Length Should Be    ${items}    0
    Close Application
