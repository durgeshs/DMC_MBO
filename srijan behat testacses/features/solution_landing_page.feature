Feature: solution landing page
@blackbox @1
  Scenario: request a proposal form check
  Given I am on "/solutions/javascript-services"
  Then print current URL
  And the response status code should be 200

  Then I should see the heading "Solutions" in the "solution_content"
  Then I should see CSS ".title-banner>h1" in the "solution_content"
  Then I should see CSS ".teaser-text" in the "solution_content"
  Then I should see CSS "svg#Layer_1" in the "solution_content"
  Then I should see CSS ".body-content>p" in the "solution_content"

  #pdf_block
  Then I should see CSS ".col-4" in the "pdf_block"
  Then I should see CSS ".download-text.col-8>h3" in the "pdf_block"
  Then I should see CSS ".download-text.col-8>p" in the "pdf_block"
  Then I should see CSS ".download-form" in the "pdf_block"
  #Then I should see CSS "#edit-email--2" in the "pdf_block"

  #related articles
  Then I should see CSS ".col-4.rc-wrap:nth-child(1)" in the "solution_related_content"
  Then I should see CSS ".col-4.rc-wrap:nth-child(2)" in the "solution_related_content"
  Then I should see CSS ".col-4.rc-wrap:nth-child(3)" in the "solution_related_content"


  #Image section
  Then I should see CSS ".col-4.rc-wrap:nth-child(1)>div.rc-box>figure" in the "solution_related_content"
  Then I should see CSS ".col-4.rc-wrap:nth-child(2)>div.rc-box>figure" in the "solution_related_content"
  Then I should see CSS ".col-4.rc-wrap:nth-child(3)>div.rc-box>figure" in the "solution_related_content"

 #heading text
 Then I should see CSS ".col-4.rc-wrap:nth-child(1)>div.rc-box>h4" in the "solution_related_content"
 Then I should see CSS ".col-4.rc-wrap:nth-child(2)>div.rc-box>h4" in the "solution_related_content"
 Then I should see CSS ".col-4.rc-wrap:nth-child(3)>div.rc-box>h4" in the "solution_related_content"

 #content
 Then I should see CSS ".col-4.rc-wrap:nth-child(1)>div.rc-box>p" in the "solution_related_content"
 Then I should see CSS ".col-4.rc-wrap:nth-child(2)>div.rc-box>div>div>p" in the "solution_related_content"
 Then I should see CSS ".col-4.rc-wrap:nth-child(3)>div.rc-box>p" in the "solution_related_content"

 @blackbox @2
   Scenario: left menu's of solution page
   Given I am on "/solutions/javascript-services"
   Then print current URL
   And the response status code should be 200

   Then I should see CSS "nav#block-solutionsmenu-2>ul>li:nth-child(3)>a" in the "solution_left_menu"
   #Then I fetch the href of className "solutions/javascript-services"
