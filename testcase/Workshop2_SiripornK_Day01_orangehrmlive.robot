*** Setting ***
Library          SeleniumLibrary
Test Setup       Login successfully
Test Teardown    Close Browser
Resource         ${CURDIR}/../resource/keyword.resource
Resource         ${CURDIR}/../resource/variable.resource

*** Test Cases ***
TC001_VerifyScreen  
    Click directory menu
    Verify title page        ${directory_title_label}        Directory
    Verify sub title page    ${directory_sub_title_label}    Directory
    Verify current url       ${url_orangeHrm_directory}
    Verify placeholder       ${employee_name_txtbox}         ${employee_name_placeholder}
    Verify default value     ${job_title_ddl}                ${default_value_ddl}
    Verify default value     ${location_ddl}                 ${default_value_ddl}
    Verify name button       ${reset_btn}                    Reset
    Verify name button       ${search_btn}                   Search

TC002_ClickCollapsIcon
    Click directory menu
    Verify title page                ${directory_title_label}        Directory
    Verify sub title page            ${directory_sub_title_label}    Directory
    Verify current url               ${url_orangeHrm_directory}
    Click collap icon
    Verify element is not visible    ${employee_name_txtbox}
    Verify element is not visible    ${job_title_ddl}
    Verify element is not visible    ${location_ddl}
    Verify element is not visible    ${reset_btn}
    Verify element is not visible    ${search_btn}

TC003_SearchRecordFound
    Click directory menu
    Verify title page                                ${directory_title_label}        Directory
    Verify sub title page                            ${directory_sub_title_label}    Directory
    Verify current url                               ${url_orangeHrm_directory}
    Input and select employee name                   John
    Select job title                                 Chief Executive Officer
    Select location                                  Texas R&D
    Click search button
    Verify (1) Record Found
    Verify display data in case search data found    John Smith

TC004_SearchNoRecordsFound
    Click directory menu
    Verify title page                 ${directory_title_label}        Directory
    Verify sub title page             ${directory_sub_title_label}    Directory
    Verify current url                ${url_orangeHrm_directory}
    Input and select employee name    John
    Select job title                  Chief Executive Officer
    Select location                   New York Sales Office
    Click search button
    Verify no record found label
    Verify banner no record found

TC005_ClickResetButton
    Click directory menu
    Verify title page                     ${directory_title_label}        Directory
    Verify sub title page                 ${directory_sub_title_label}    Directory
    Verify current url                    ${url_orangeHrm_directory}
    Input and select employee name        John
    Select job title                      Account Assistant
    Select location                       Texas R&D
    Click reset button
    Verify employee_name value is null
    Verify placeholder                    ${employee_name_txtbox}         ${employee_name_placeholder}
    Verify default value                  ${job_title_ddl}                ${default_value_ddl}
    Verify default value                  ${location_ddl}                 ${default_value_ddl}

TC006_EyployeeNameNotFound  
    Click directory menu
    Verify title page                     ${directory_title_label}        Directory
    Verify sub title page                 ${directory_sub_title_label}    Directory
    Verify current url                    ${url_orangeHrm_directory}
    Input employee name                   หอยโข่ง
    Verify no record found show in employee name textbox 
