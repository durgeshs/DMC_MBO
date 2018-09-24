Feature: header section
@blackbox @1
Scenario: header section
Given I visit "/"
Then print current URL

#top banner
Then I should see CSS ".site-logo" in the "home_logo_link"
And I should see CSS ".site-name" in the "home_logo_link"

And I should see CSS "#ultimenu-main" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(2)" in the "home_menu_links"
And I should see the link "Drupal" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(3)" in the "home_menu_links"
And I should see the link "Solutions" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(4)" in the "home_menu_links"
And I should see the link "Technologies" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(5)" in the "home_menu_links"
And I should see the link "Process" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(6)" in the "home_menu_links"
And I should see the link "Clients" in the "home_menu_links"

Then I should see CSS "#ultimenu-main>li:nth-child(7)" in the "home_menu_links"
And I should see the link "Contact" in the "home_menu_links"
And I should see the response status of href of CSS "#ultimenu-main>li:nth-child(7)>a" be 200 



@blackbox @2
Scenario: slider header section
Given I visit "/"
Then print current URL
Then I should see CSS "right col-5"

Then I should see CSS ".parallax>figure>img" in the "homepage_slider_image"
