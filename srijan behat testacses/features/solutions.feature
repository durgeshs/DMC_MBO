Feature: Solution
@blackbox @1
Scenario: Blocks
Given I visit "/solutions"
Then print current URL
Then I should see CSS ".solution-col.col-4:nth-child(1)"
Then I should see CSS ".solution-col.col-4:nth-child(2)"
Then I should see CSS ".solution-col.col-4:nth-child(n)"
