Feature: Home page test cases
@blackbox @1
Scenario: home page text1
Given I visit "/"
Then print current URL
  And the response status code should be 200
Then I should see the heading "Capabilities" in the "home_capabilities_block"

Then I should see the link "Enterprise Solutions"
And I should see the link "JavaScript"

@blackbox @2
Scenario: capabilities block

Given I visit "/"
Then print current URL
And the response status code should be 200
Then I should see the heading "Capabilities" in the "home_capabilities_block"

# capabilities block
Then I should see CSS ".capabilities-upper-content:nth-child(1)"
And I fetch the href of className "col-6:nth-child(1)"
Then I should see CSS ".capabilities-upper-content:nth-child(2)"
Then I should see CSS ".capabilities-upper-content:nth-child(3)"


# capabilities block logo
Then I should see CSS ".capabilities-upper-content:nth-child(1)>.cap-log"
Then I should see CSS ".capabilities-upper-content:nth-child(2)>.cap-log"
Then I should see CSS ".capabilities-upper-content:nth-child(3)>.cap-log"

# capabilities block title
Then I should see CSS ".capabilities-upper-content:nth-child(1)>title"
Then I fetch the href of className ".capabilities-upper-content:nth-child(1)>title"
Then I should see CSS ".capabilities-upper-content:nth-child(2)>title"
Then I should see CSS ".capabilities-upper-content:nth-child(3)>title"

# capabilities block read more
Then I should see CSS ".capabilities-upper-content:nth-child(1)>read-more"
Then I should see CSS ".capabilities-upper-content:nth-child(2)>read-more"
Then I should see CSS ".capabilities-upper-content:nth-child(3)>read-more"

# capabilities teaser
Then I should see CSS ".capabilities-upper-content:nth-child(1)>teaser"
Then I should see CSS ".capabilities-upper-content:nth-child(2)>teaser"
Then I should see CSS ".capabilities-upper-content:nth-child(3)>teaser"


@blackbox @3
Scenario: our process block elements
  Given I visit "/"
  Then I should see the heading "Our Process" in the "home_our_process_block"

  #Our process block rows
  Then I should see CSS ".process-item.col-3:nth-child(1)" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(2)" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(3)" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(4)" in the "home_our_process_block"
  And I fetch the href of className ".more-link>a"
  Then I should see the response status of href of CSS ".more-link>a" be 200

  #our process block icons
  Then I should see CSS ".process-item.col-3:nth-child(1)>span.icon" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(2)>span.icon" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(3)>span.icon" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(4)>span.icon" in the "home_our_process_block"

  #our process block
  Then I should see CSS ".process-item.col-3:nth-child(1)>div.item-wrap" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(2)>div.item-wrap" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(3)>div.item-wrap" in the "home_our_process_block"
  Then I should see CSS ".process-item.col-3:nth-child(4)>div.item-wrap" in the "home_our_process_block"


 #our process block intro-text
 Then I should see CSS ".process-item.col-3:nth-child(1) div.intro-txt" in the "home_our_process_block"
 Then I should see CSS ".process-item.col-3:nth-child(2) div.intro-txt" in the "home_our_process_block"
 Then I should see CSS ".process-item.col-3:nth-child(3) div.intro-txt" in the "home_our_process_block"
 Then I should see CSS ".process-item.col-3:nth-child(4) div.intro-txt" in the "home_our_process_block"

 #our process block item list
 Then I should see CSS ".process-item.col-3:nth-child(1) div.item-lists"
 Then I should see CSS ".process-item.col-3:nth-child(2) div.item-lists"
 Then I should see CSS ".process-item.col-3:nth-child(3) div.item-lists"
 Then I should see CSS ".process-item.col-3:nth-child(4) div.item-lists"


@blackbox @4
Scenario: featured case studies

Given I visit "/"
Then print current URL
And the response status code should be 200

Then I should see the heading "Featured Case Studies" in the "home_featured_case_study"


# case study block
Then I should see CSS ".col-4 cs-col-wrap:nth-child(1)"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(2)"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(3)"

# case study fcs-logo
Then I should see CSS ".col-4 cs-col-wrap:nth-child(1)>span.fcs-logo"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(2)>span.fcs-logo"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(3)>span.fcs-logo"

# case study main image
Then I should see CSS ".col-4 cs-col-wrap:nth-child(1)>main-image"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(2)>main-image"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(3)>main-image"

# case study content
Then I should see CSS ".col-4 cs-col-wrap:nth-child(1)>cs-more-content"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(2)>cs-more-content"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(3)>cs-more-content"

# case study read-case-study
Then I should see CSS ".col-4 cs-col-wrap:nth-child(1)>span .read-case-study"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(2)>span .read-case-study"
Then I should see CSS ".col-4 cs-col-wrap:nth-child(3)>span .read-case-study"

@blackbox @5
Scenario: thought article block

  Given I visit "/"
  
  Then I should see the heading "Thought articles" in the "home_thought_articles"
  Then I should see cSS ".col-4 article-item:nth-child(1)"
  Then I should see cSS ".col-4 article-item:nth-child(2)"
  Then I should see cSS ".col-4 article-item:nth-child(3)"

  #href
  And I fetch the href of className ".excerpt>h3>a"


  # thought article title
  Then I should see CSS ".col-4 article-item:nth-child(1)>featured-img"
  Then I should see CSS ".col-4 article-item:nth-child(2)>featured-img"
  Then I should see CSS ".col-4 article-item:nth-child(3)>featured-img"

 # thought article blog wrap
  Then I should see CSS ".col-4 article-item:nth-child(1)>blog-wrap"
  Then I should see CSS ".col-4 article-item:nth-child(2)>blog-wrap"
  Then I should see CSS ".col-4 article-item:nth-child(3)>blog-wrap"

  # thought article content
  Then I should see CSS ".col-4 article-item:nth-child(1)>excerpt"
  Then I should see CSS ".col-4 article-item:nth-child(2)>excerpt"
  Then I should see CSS ".col-4 article-item:nth-child(3)>excerpt"

  #thought article read more
  Then I should see CSS ".col-4 article-item:nth-child(1)>span .read-more"
  Then I should see CSS ".col-4 article-item:nth-child(2)>span .read-more"
  Then I should see CSS ".col-4 article-item:nth-child(3)>span .read-more"

# More thought articles
  Then I should see CSS ".col-4 article-item:nth-child(3)>more-link"
