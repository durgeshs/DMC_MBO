Feature: Technologies

@blackbox @1
Scenario: capability block
Given I visit "/technologies"
Then print current URL
And the response status code should be 200

#heading
Then I should see the heading "Capabilities" in the "capabilities_block"

#capabilities block
Then I should see CSS ".capabilities-upper-content:nth-child(1)" in the "capabilities_block"
Then I should see CSS ".capabilities-upper-content:nth-child(2)"
Then I should see CSS ".capabilities-upper-content:nth-child(3)"
