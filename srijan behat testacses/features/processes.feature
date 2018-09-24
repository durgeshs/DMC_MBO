Feature: landing page
@blackbox @1
Scenario: landing page
Given I visit "/processes/meeting-budgets-without-compromising-quality"
Then print current URL
And the response status code should be 200
Then I should see the heading "Meeting Budgets Without Compromising Quality" in the "process_content"

Then I should see CSS "div#Pre-Engagement>img" in the "process_content"
Then I should see CSS "#Pre-Engagement>p" in the "process_content"
Then I should see CSS "#Pre-Engagement>img" in the "process_content"

#next previous
Then I should see CSS ".col-6.item:nth-child(1)>a"
Then I should see CSS ".col-6.item:nth-child(2)>a"
