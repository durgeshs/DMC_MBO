Feature: contact us form
@blackbox @1
  Scenario: request a proposal form check
  Given I am on "/"
  Then print current URL
  And the response status code should be 200

  Then I should see CSS "block-sitewidecontactform"
  Then I should see CSS "edit-field-your-name-wrapper"
  Then I should see CSS "edit-field-form-contact-number-wrapper"
  Then I should see CSS "edit-field-e-mail-address-wrapper"
  Then I should see CSS "edit-field-how-can-we-help-you-wrapper"
  Then I should see CSS "edit-submit"

@blackbox @2

 Scenario: verify Error message
 Given I am on "/"
 Then print current URL
 And the response status code should be 200

 When I press the "edit-submit" button
 Then I wait for 3 seconds

  Then I should see CSS ".field--type-string:nth-child(1) span.smk-error-msg"
  Then I should see CSS ".field--type-string:nth-child(2) span.smk-error-msg"
  Then I should see CSS ".field--type-string:nth-child(3) span.smk-error-msg"
  Then I should see CSS ".field--type-string:nth-child(4) span.smk-error-msg"


   @3 @javascript

   Scenario: submit the form
   Given I am on "/"
   Then print current URL


   #Then I enter "xyz" for "edit-field-your-name-0-value"
   #Then I enter "1234567891" for "edit-field-form-contact-number-0-value"
   #Then I enter "xyz@malinator.com" for "edit-field-e-mail-address-0-value"
   #Then I enter "test" for "edit-field-how-can-we-help-you-0-value"


  When I fill in "edit-field-your-name-0-value" with "xyz"
  Then I fill in "edit-field-form-contact-number-0-value" with "1234567891"
  Then I fill in "edit-field-e-mail-address-0-value" with "xyz12@mailinator.com"
  Then I fill in "edit-field-how-can-we-help-you-0-value" with "test"
  And I press the "op" button
  #Then I wait for AJAX to finish
  Then I wait for 10 seconds

  And print current URL
