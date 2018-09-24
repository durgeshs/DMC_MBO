Feature: form submission
@javascript @1
  Scenario: landing page
  Given I am on "/contact-sealed-air"
  Then print current URL
  #And the response status code should be 200
  Then I should see CSS "#jobLevel"
  When I click on CSS element "#jobLevel"
  When I select "Owner" from "jobLevel"
  When I press the Button "#mktoForm_1014 .mktoButton"
  Then I should see the button #mktoForm_1014 .mktoButton
