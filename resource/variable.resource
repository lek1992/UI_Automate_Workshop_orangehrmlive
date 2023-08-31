*** Variables ***
${url_orangeHrm}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${url_orangeHrm_directory}      https://opensource-demo.orangehrmlive.com/web/index.php/directory/viewDirectory
${employee_name_placeholder}    Type for hints...
${password_placeholder}         Password
${username}                     Admin
${password}                     admin123
${default_value_ddl}            -- Select --

#-----locator--------#
# ${page_name_label}            css=#root > div > div.login_logo
${username_txtbox}              name=username
${password_txtbox}              name=password
${login_btn}                    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
${directory_menu_btn}           xpath=//*[text()="Directory"] 
${directory_title_label}        xpath=//h6[text()="Directory"]
${directory_sub_title_label}    xpath=//h5[text()="Directory"]
${employee_name_txtbox}         xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input
${employee_name_btn}            xpath=//div[@class="oxd-autocomplete-option"]//span
${job_title_ddl}                xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[2]/div/div[2]/div/div/div[1]
${location_ddl}                 xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]
${reset_btn}                    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[1]
${search_btn}                   xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
${collap_icon}                  xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[1]/div[2]/div[3]/button/i
${employee_name_label}          xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/p[1]
${job_title_label}              xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/p[2]
${location_label}               xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div/div[2]/div/div/div/div[3]/div/p[2]
${(1)_record_found_label}       xpath=//span[text()="(1) Record Found"]
${no_record_found_label}        xpath=//span[text()="No Records Found"]
${title_no_record_found_banner}         xpath=//p[text()="Info"]
${sub_title_no_record_found_banner}     xpath=//*[@id="oxd-toaster_1"]/div/div[1]/div[2]/p[2]
${no_record_found_label_employee_name_txtbox}       xpath=//div[text()="No Records Found"]
