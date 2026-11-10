*** Settings ***
Documentation        Test case QP-01, A custom pizza reaches the admin list.
Resource             resources/quickpizza.resource
Test Teardown        Close Browser
Library              DateTime

*** Test Cases ***
QP-01 A Custom Pizza Reaches The Admin List
    [Documentation]    A pizza request with restrictions gives a pizza that
    ...    keeps them, rating needs a login, and the admin sees the pizza.

    # Step 1: Open QuickPizza
    Open QuickPizza

    # Step 2: Turn on Advanced
    Turn On Advanced

    # Step 3: Fill in the pizza request
    ${stamp}=    Get Current Date    result_format=%Y%m%d-%H%M%S
    ${name}=    Set Variable    Lab Pizza ${stamp}
    Fill In The Pizza Request    600    Knife    ${name}
    Capture Page Screenshot    qp01-step3-fields.png

    # Step 4: Ask for a pizza and verify restrictions
    Ask For A Pizza
    ${tool}=    Recommendation Should Keep The Restrictions
    ...    ${name}    Knife    600
    Capture Element Screenshot    id:recommendations    qp01-step4-pizza.png

    # Step 5: Rate the pizza without logging in
    Rate The Pizza Without Logging In
    Capture Page Screenshot    qp01-step5-login-needed.png

    # Step 6: Log in as admin
    Log In As Admin    admin    admin

    # Step 7: Verify the pizza in the admin list
    Verify Pizza In Admin List    ${name}    ${tool}
    Capture Page Screenshot    qp01-step7-admin-list.png