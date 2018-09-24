Feature: PerformanceAreaSetup structure

@javascript @1
  Scenario: plant structure form

Given I am on "/user/login"
Then I set browser window size to "1350" x "1200"
Then print current URL
And I wait for 2 seconds

Then I should see CSS "edit-name"
And I fill in "edit-name" with "admin"
And I wait for 2 seconds

Then I should see CSS "edit-pass"
And I fill in "edit-pass" with "1"
And I wait for 2 seconds

Then I press the "op" button
Then I wait for 3 seconds
And print current URL

Then I click "Content"
Then print current URL
And I wait for 2 seconds

Then I click on the element with xpath "//div[@id='block-seven-local-actions']//li/a"
Then I wait for 2 seconds
And I click "Performance area Setup"

Then I should see CSS "#edit-title-0-value"
And I fill in "Title" with "abc"

Then I should see CSS "#edit-field-user-gpl-0-target-id"
And I fill in "GPL Name" with "test CPL"

Then I should see CSS "#edit-field-performance-area-work-cent-0-subform-field-work-center-0-value"
And I enter "1234" for "Work Center"

Then I should see CSS "#edit-field-performance-area-work-cent-0-subform-field-description-0-value"
And I fill in "Description" with "test test test test"

Then I should see CSS "#edit-field-performance-area-work-cent-0-subform-field-performance-area-cost-kpi-0-subform-field-cost-kpi-0-target-id"
And I fill in "Cost KPI" with "123"

Then I click on the element with xpath ".//*[@id='edit-field-performance-area-work-cent-0-subform-field-performance-area-cost-kpi-add-more-add-more-button-performance-area-kpi']"
And I wait for 2 seconds

Then I should see CSS "input#edit-field-performance-area-work-cent-0-subform-field-performance-area-cost-kpi-1-subform-field-cost-kpi-0-target-id"
And I fill in "Cost KPI" with "test2"

Then I should see CSS "#edit-field-performance-area-work-cent-0-subform-field-performance-area-cost-kpi-1-subform-field-weightage-0-value"
And I fill in "Weightage" with "test data"
And I wait for 1 seconds

Then I click on the element with xpath ".//*[@id='edit-field-performance-area-work-cent-add-more-add-more-button-performance-area-work-center']"
And I wait for 2 seconds

Then I should see CSS "#edit-field-performance-area-work-cent-1-subform-field-work-center-0-value"
And I fill in "Work Center" with "test work center"

Then I should see CSS "#edit-field-performance-area-work-cent-1-subform-field-description-0-value"
And I fill in "Description" with "Test Description"

Then I should see CSS "#edit-field-performance-area-work-cent-1-subform-field-cost-center-0-value"
And I fill in "Cost Center" with "Test cost center"
And I wait for 2 seconds

Then I click on the element with xpath ".//*[@id='edit-submit']"
And I wait for 5 seconds
Then print current URL


#Then I fetch the href of className "#toolbar-link-system-admin_content"
#Then I match the href "/admin/content" of css "#toolbar-link-system-admin_content"
#Then I click on the element with css "#toolbar-link-system-admin_content"
#Then I click "Add content"
#Then I  fill in "#edit-field-performance-area-work-cent-0-subform-field-work-center-0-value" with "1234"
#Then I  fill in "Work Center" with "1234"
