Feature: Login

@javascript @1
  Scenario: login
  Given I am on "/user/login"
  Then print current URL

 Then I should see CSS "edit-name"
 Then I should see CSS "edit-pass"

Then I fill in "edit-name" with "admin"
Then I fill in "edit-pass" with "1"

Then I press the "op" button
Then I wait for 5 seconds
And print current URL
