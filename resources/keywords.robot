*** Settings ***
Library    AppiumLibrary
Resource   variables.robot
Resource   locators.robot

*** Keywords ***
Open App
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    app=${APP}

Add Todo
    [Arguments]    ${todo_text}
    Click Element    ${FAB_ADD}
    Input Text       ${TODO_TEXT_FIELD}    ${todo_text}
    Click Element    ${SAVE_BUTTON}

Edit First Todo
    [Arguments]    ${new_text}
    Click Element    ${FIRST_ITEM}
    Clear Text       ${TODO_TEXT_FIELD}
    Input Text       ${TODO_TEXT_FIELD}    ${new_text}
    Click Element    ${SAVE_BUTTON}

Delete First Todo
    Long Press       ${FIRST_ITEM}    2
    Click Element    xpath=//android.widget.Button[@text="DELETE"]

Get First Todo Text
    ${text}=    Get Text    ${FIRST_ITEM}
    [Return]    ${text}
