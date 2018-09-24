Feature: plant structure

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
And I click "Plant People Structure"

Then I should see CSS "#edit-title-0-value"
Then I fill in "Title" with "title test"

Then I should see CSS "#edit-field-user-gpl-0-target-id"
Then I fill in "GPL Name" with "GPL test"

Then I should see CSS "#edit-field-plant-peoples-structure-0-subform-field-user-tpl-0-target-id"
Then I fill in "Select TPL" with "TPL Tester"

Then I should see CSS "#edit-field-plant-peoples-structure-0-subform-field-operator-0-target-id"
#Then I fill in "#edit-field-plant-peoples-structure-0-subform-field-operator-0-target-id" with "test operator1"
And I enter "test operator1" for "Operator (value 1)"

Then I click on the element with xpath ".//*[@id='edit-field-plant-peoples-structure-0-subform-field-operator-add-more']"
And I wait for 7 seconds

Then I should see CSS "#edit-field-plant-peoples-structure-0-subform-field-operator-1-target-id"
#Then I fill in "form-autocomplete form-text" with "test operator 2"
And I enter "test operator2" for "Operator (value 2)"

Then I click on the element with xpath ".//*[@id='edit-field-plant-peoples-structure-add-more-add-more-button-plant-peoples']"
And I wait for 5 seconds
