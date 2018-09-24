Feature: Home page footer section
@blackbox @1
Scenario: footer section
Given I visit "/"
Then print current URL
And I should see CSS ".site-footer__top" in the "home_top_footer"

#delhi address
And I should see the heading "Delhi" in the "home_address"
And I should see CSS ".address-block" in the "home_address"
And I should see CSS ".location-map" in the "home_address"

#solutions
And I should see the heading "Solutions" in the "home_footer1"
And I should see CSS ".menu>li>a:nth-child(1)" in the "home_footer1"
And the response status code should be 200

#drupal
And I should see the heading "Drupal" in the "home_footer2"
And I should see CSS ".block-drupalfooter>ul>li>a:nth-child(1)"

#hub
And I should see the heading "Hub" in the "home_footer3"
And I should see CSS "#block-srijan-footerhub>ul>li>a:nth-child(1)" in the "home_footer3"

#about us
And I should see the heading "About" in the "home_footer4"
And I should see CSS "#block-srijan-footerabout>ul>li>a:nth-child(1)" in the "home_footer4"

#keep in touch

Then I should see the heading "Keep in touch" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(1)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(2)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(3)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(4)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(5)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(6)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(7)" in the "home_footer5"
Then I should see CSS "#block-keepintouch-3>div>a:nth-child(8)" in the "home_footer5"

#social icon links
#facebook
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(1)" for url "https://www.facebook.com/SrijanOne/"
#twitter
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(2)" for url "http://www.twitter.com/srijan"
#google plus
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(3)" for url "https://plus.google.com/+SrijanNet/"
#linked in
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(4)" for url "https://www.linkedin.com/company/srijan-technologies-pvt--ltd-"
#instagram
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(5)" for url "https://www.instagram.com/srijanone/"
#youtube
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(6)" for url "https://www.youtube.com/channel/UCcOCCcaNgG0bdtXU4gnAOcg"
#slideshare
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(7)" for url "http://www.slideshare.net/SrijanOne"
#mail to
Then compare attribute using css "#block-keepintouch-3>div>a:nth-child(8)" for url "mailto:business@srijan.net"

#subscribe to our news letter
