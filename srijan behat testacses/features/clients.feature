Feature: clients landing page
@blackbox @1
  Scenario: landing page
  Given I am on "/clients"
  Then print current URL
  And the response status code should be 200

  #header section
  Then I should see CSS ".image-style-landing-page-banner" in the "clients_header_image"
  Then I should see CSS ".text-rotator" in the "clients_heading"

#filter block listing
Then I should see the heading "CASE STUDIES" in the "clients_content_block"
Then I should see CSS "#block-views-block-client-case-studies-block-1>h2"
Then I should see CSS ".fieldset-legend" in the "clients_fieldset"
Then I should see CSS "div.js-form-type-radio:nth-child(1) .option" in the "clients_fieldset"
Then I should see CSS "div.js-form-type-radio:nth-child(2) .option" in the "clients_fieldset"
Then I should see CSS "div.js-form-type-radio:nth-child(3) .option" in the "clients_fieldset"
Then I should see CSS "div.js-form-type-radio:nth-child(4) .option" in the "clients_fieldset"
Then I should see CSS "div.js-form-type-radio:nth-child(5) .option" in the "clients_fieldset"


#href
Then I should see CSS "div.js-form-type-radio:nth-child(1) .option" in the "clients_fieldset"
And I fetch the href of className ".row:nth-child(1)>div:nth-child(1)>figure>a"
#Then I should see the response status of href of CSS ".row:nth-child(1)>div:nth-child(1)>figure>a" be 200

#clients block
#Then I should see CSS ".horizontal .row:nth-child(1) div.cs-col-wrap:nth-child(1) .image-style-frontpage-case-studies-330x330-"
#Then I should see CSS ".horizontal .row:nth-child(2) div.cs-col-wrap:nth-child(2) .image-style-frontpage-case-studies-330x330-"
#Then I should see CSS ".horizontal .row:nth-child(3) div.cs-col-wrap:nth-child(3) .image-style-frontpage-case-studies-330x330-"

Then I should see CSS ".row:nth-child(1) div.cs-col-wrap:nth-child(1)"
Then I should see CSS ".row:nth-child(1) div.cs-col-wrap:nth-child(2)"
Then I should see CSS ".row:nth-child(1) div.cs-col-wrap:nth-child(3)"

Then I should see CSS ".row:nth-child(2) div.cs-col-wrap:nth-child(1)"
Then I should see CSS ".row:nth-child(2) div.cs-col-wrap:nth-child(2)"
Then I should see CSS ".row:nth-child(2) div.cs-col-wrap:nth-child(3)"

Then I should see CSS ".row:nth-child(3) div.cs-col-wrap:nth-child(1)"
Then I should see CSS ".row:nth-child(3) div.cs-col-wrap:nth-child(2)"
Then I should see CSS ".row:nth-child(3) div.cs-col-wrap:nth-child(3)"

#block image
Then I should see CSS "div.cs-col-wrap:nth-child(1) #Layer_open"
Then I should see CSS "div.cs-col-wrap:nth-child(2) #Layer_open"
Then I should see CSS "div.cs-col-wrap:nth-child(3) #Layer_open"
Then I should see CSS "div.cs-col-wrap:nth-child(4) #Layer_open"


#our clients
Then I should see CSS "#block-views-block-our-clients-block-1>h2"
