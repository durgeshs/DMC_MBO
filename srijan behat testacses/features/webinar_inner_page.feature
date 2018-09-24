Feature: webinar inner page
@blackbox @1
Scenario: webinars inner page
Given I visit "/webinar/moving-monolithic-microservices-architecture"
Then print current URL
And the response status code should be 200

#speaker's image
Then I should see CSS ".wrap>figure>img"
Then I should see CSS "div.image-wrapper .wrap>h2"
Then I should see CSS "div.wrap .presenter-details .by-txt"
Then I should see CSS ".webinar-info>li:nth-child(1)"
Then I should see CSS ".webinar-info>li:nth-child(2)"
Then I should see CSS "div.webinar-details .subtitle"
