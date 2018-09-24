Feature: webinar page
@blackbox @1
Scenario: webinars
Given I visit "/webinars"
Then print current URL
And the response status code should be 200


#upcoming webinar block
And I should see the heading "Upcoming Webinar" in the "upcoming_webinar"
Then I should see CSS ".webinar-info>li:nth-child(1)" in the "upcoming_webinar"
Then I should see CSS ".webinar-info>li:nth-child(2)" in the "upcoming_webinar"
Then I should see CSS ".webinar-details>h2>a" in the "upcoming_webinar"
Then I should see CSS ".presenter-details>figure>img" in the "upcoming_webinar"
Then I should see CSS ".presenter" in the "upcoming_webinar"
Then I should see CSS ".webinar-details>p" in the "upcoming_webinar"
And I should see the link "Register Now"

#featured webinars
And I should see the heading "Featured Webinars" in the "featured_webinars"
Then I should see CSS ".col-4.item:nth-child(1)" in the "featured_webinars"
Then I should see CSS ".col-4.item:nth-child(2)" in the "featured_webinars"
Then I should see CSS ".col-4.item:nth-child(3)" in the "featured_webinars"
Then I should see CSS ".more-link>a" in the "featured_webinars"

#socialblock
Then I should see CSS ".fa.fa-twitter.fa-4x" in the "socialblock_webinar"
Then I should see CSS ".fa.fa-youtube.fa-4x" in the "socialblock_webinar"
Then I should see CSS ".fa.fa-slideshare.fa-4x" in the "socialblock_webinar"

#webinar page form
Then I should see the heading "Tell Us A Bit About Your Speaking Experiences" in the "webinar_form_id"
Then I should see CSS "#block-form-4>h2"

Then I should see the
