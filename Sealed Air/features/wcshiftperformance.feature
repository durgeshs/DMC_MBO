
Feature: wc_shift_performance

@javascript @1
  Scenario: plant structure form

Given I am on "/user/login"
Then I set browser window size to "1300" x "1200"
Then print current URL

Then I should see CSS "edit-name"
Then I fill in "edit-name" with "admin"

Then I should see CSS "edit-pass"
Then I fill in "edit-pass" with "1"

Then I press the "op" button
Then I wait for 3 seconds
And print current URL

Then I click "Content"
Then print current URL
And I wait for 3 seconds

Then I click on the element with xpath "//div[@id='block-seven-local-actions']//li/a"
Then I wait for 3 seconds
And I click "WC Shift Performance"

Then I should see CSS "#edit-title-0-value"
Then I fill in "Title" with "title test"

Then I should see CSS "#edit-field-select-shift-0-target-id"
Then I fill in "Select Shift" with "test shift"

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-work-center-0-value"
Then I fill in "Work Center" with "Test work center"

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-hours-0-value"
And I fill in "Hours" with "2h test"

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-0-subform-field-cost-kpi-0-target-id"
And I fill in "Cost KPI" with "Test cost KPI 1"

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-0-subform-field-target-0-value"
And I fill in "Target" with "test target1"

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-0-subform-field-actual-0-value"
Then I fill in "Actual" with "1 test"

Then I click on the element with xpath "//*[@id='edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-add-more-add-more-button-shift-performance-kpi']"
And I wait for 10 seconds

Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-1-subform-field-cost-kpi-0-target-id"
And I fill in "" with ""
Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-1-subform-field-target-0-value"
And I fill in "Target" with "test target2"

#Then I should see CSS "#edit-field-shift-performance-work-cen-0-subform-field-shift-performance-hours-0-subform-field-shift-performance-kpi-1-subform-field-actual-0-value"
#Then I fill in "Actual" with "2 test"

#Then I click on the element with xapth ".//*[@id='edit-field-shift-performance-work-cen-add-more-add-more-button-shift-performance-work-centers']"
And I wait for 5 seconds

Then I should see CSS "#edit-field-shift-performance-operator-0-subform-field-shift-performance-work-cen-0-subform-field-work-center-0-value"
And I fill in "Work Center" with "WC 1"

And I fill in "Hour" with "h1"
And I fill in "Loan Hours" with "LH1"

Then I should see CSS "#edit-field-shift-performance-operator-0-subform-field-flex-factor"
And I click on the element with xpath ".//*[@id='edit-field-shift-performance-operator-0-subform-field-flex-factor']"
When I select "1" from "Flex Factor"
And I wait for 5 seconds

Then I should see CSS "#edit-field-shift-performance-operator-0-subform-field-safety-factor"
Then I click on the element with xpath "//*[@id='edit-field-shift-performance-operator-0-subform-field-safety-factor']"

And I wait for 10 seconds
