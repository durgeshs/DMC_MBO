Feature: clients landing page
@blackbox @1
  Scenario: href page
  Given I am on "/clients"
  Then print current URL
  And the response status code should be 200

#href
Then I should see CSS "div.js-form-type-radio:nth-child(1) .option" in the "clients_fieldset"
And I fetch the href of className "div:nth-child(1)>div.col-4.cs-col-wrap:nth-child(1)>figure.main-image.like-poster>a"
#Then I match the href of CSS "block-views-block-client-case-studies-block-1']/div/div/div[3]/div/div/div[1]/div[1]/figure/a/img"
Then compare attribute using css "div:nth-child(1)>div.col-4.cs-col-wrap:nth-child(1)>figure.main-image.like-poster>a" for url "/case-study/custom-drupal-module-implementation-drupal-7-multi-site-architecture"
#Then I should see the response status of href of CSS ".row:nth-child(1)>div:nth-child(1)>figure>a" be 200
