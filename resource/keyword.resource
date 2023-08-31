*** Settings ***
Resource    ${CURDIR}/../resource/variable.resource
Library          SeleniumLibrary

*** Keywords ***
Go to website
    Open Browser               ${url_orangeHrm}    chrome
    Maximize Browser Window

Login
    [Arguments]                      ${username}=${username}    ${password}=${password}
    Wait Until Element Is Visible    ${username_txtbox}
    Input Text                       ${username_txtbox}         ${username}
    Input Password                   ${password_txtbox}         ${password}
    Click Element                    ${login_btn}

Login successfully
    Go to website
    Login

Click directory menu
    Wait Until Element Is Visible    ${directory_menu_btn}
    Click Element                    ${directory_menu_btn}

Verify title page
    [Arguments]                      ${locator}                  ${title_page}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be           ${locator}    ${title_page}

Verify sub title page
    [Arguments]                      ${locator}                      ${sub_title_page}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be           ${locator}    ${sub_title_page}

Verify placeholder
    [Arguments]                          ${locator}    ${placeholder_text}
    Element Attribute Value Should Be    ${locator}    placeholder            ${placeholder_text}

Verify default value
    [Arguments]               ${locator}    ${default_value}
    Element Text Should Be    ${locator}    ${default_value}

Verify name button
    [Arguments]               ${location}    ${name_button}
    Element Text Should Be    ${location}    ${name_button}

Click collap icon
    CLick Element    ${collap_icon}

Verify element is not visible
    [Arguments]                      ${locator}
    Element Should Not Be Visible    ${locator}    

Verify current url
    [Arguments]        ${expected_url}
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}     ${expected_url}

Input and select employee name
    [Arguments]                      ${employee_name}
    Wait Until Element Is Visible    ${employee_name_txtbox}    
    Input Text                       ${employee_name_txtbox}    ${employee_name}
    Wait Until Element Is Visible    ${employee_name_btn}       
    Click Element                    ${employee_name_btn}

Select job title
    [Arguments]                      ${job_title}
    Wait Until Element Is Visible    ${job_title_ddl}
    Click Element                    ${job_title_ddl}
    Click Element                    xpath=//span[text()='${job_title}']
    Set Global Variable              ${job_title}
    

Select location
    [Arguments]                      ${location}
    Wait Until Element Is Visible    ${location_ddl}
    Click Element                    ${location_ddl}
    Click Element                    xpath=//span[text()='${location}']
    Set Global Variable              ${location}

Click search button
    Wait Until Element Is Visible    ${search_btn}
    Click Element                    ${search_btn}

Click reset button
    Wait Until Element Is Visible    ${reset_btn}
    Click Element                    ${reset_btn}

Verify (1) Record Found
    Wait Until Element Is Visible    ${(1)_record_found_label}
    Element Text Should Be           ${(1)_record_found_label}    (1) Record Found    

Verify display data in case search data found
    [Arguments]    ${employee_name}
#   Display employee name correctly
    Wait Until Element Is Visible    ${employee_name_label}
    Element Text Should Be           ${employee_name_label}    ${employee_name} 

#   Display job title correctly
    Wait Until Element Is Visible    ${job_title_label}
    Element Text Should Be           ${job_title_label}    ${job_title}

#   Display location correctly
    Wait Until Element Is Visible    ${location_label}
    Element Text Should Be           ${location_label}    ${location}

Verify no record found label
    Wait Until Element Is Visible    ${no_record_found_label}
    Element Text Should Be           ${no_record_found_label}    No Records Found 

Verify banner no record found
# title
    Wait Until Element Is Visible    ${title_no_record_found_banner}
    Element Text Should Be           ${title_no_record_found_banner}    Info
# sub title
    Wait Until Element Is Visible    ${sub_title_no_record_found_banner}
    Element Text Should Be           ${sub_title_no_record_found_banner}    No Records Found

Verify employee_name value is null
    Wait Until Element Is Visible    ${employee_name_txtbox}
    Element Text Should Be           ${employee_name_txtbox}    ${EMPTY}

Verify no record found show in employee name textbox
    Wait Until Element Is Visible    ${no_record_found_label_employee_name_txtbox}   
    Element Should Be Visible    ${no_record_found_label_employee_name_txtbox}   

Input employee name
    [Arguments]                      ${employee_name}
    Wait Until Element Is Visible    ${employee_name_txtbox}    
    Input Text                       ${employee_name_txtbox}    ${employee_name}
