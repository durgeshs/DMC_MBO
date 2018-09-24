<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Behat\Tester\Exception\PendingException;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
* @Then I wait for :time seconds
*/
public function iWaitForSeconds($time)
{
sleep($time);
}



/**
  * @Given /^I set browser window size to "([^"]*)" x "([^"]*)"$/
  */
 public function iSetBrowserWindowSizeToX($width, $height) {
   $this->getSession()->resizeWindow((int)$width, (int)$height, 'current');
 }



/**
       * @Then I should see CSS :css
       *
       *
       */
       public function iShouldSeeCss($css) {
         $session = $this->getSession();
         $regionObj = $session->getPage();
         $regionText = $regionObj->find('css',$css);
         if (NULL===$regionText) {
           return false;
         } else {
           return true;
         }
       }




/**
* @When /^(?:|I )select "(?P<option>\w+)" in the "(?P<name>\w+)" select$/
 */
public function selectState($option, $name) {
   $page = $this->getSession()->getPage();
   $selectElement = $page->find('xpath', '//select[@data-name = "' . $name . '"]');
   $selectElement->selectOption($option);
 }

 /**
 * @When /^(?:|I )select "(?P<option>\w+)" in our "(?P<name>\w+)" select$/
  */
 public function selectState2($option, $name) {
    $page = $this->getSession()->getPage();
    $selectElement = $page->find('xpath', './/*[@name="'.$name.'"]');
    $selectElement->selectOption($option);
  }

 /**
     * @When I press the Button :CSS
     */
    public function iPressTheButton($CSS){
    $session = $this->getSession();
    $regionObj = $session->getPage();
    $regionText = $regionObj->find('css',$css);
    if (NULL===$regionText) {
      return false;
    {
        throw new PendingException();
    }
  }
}

/**
      * Click on the element with the provided xpath query
      *
      * @When /^I click on the element with xpath "([^"]*)"$/
      */
      public function iClickOnTheElementWithXPath($xpath)
      {
      $session = $this->getSession(); // get the mink session
      $element = $session->getPage()->find('xpath',$session->getSelectorsHandler()->selectorToXpath('xpath', $xpath)); // runs the actual query and returns the element
      // errors must not pass silently
      if (null === $element)
      {
      throw new \InvalidArgumentException(sprintf('Could not evaluate XPath: "%s"', $xpath));
      }

     // ok, let's click on it
      $element->click();
      }


      /**
            * @When /^I click on the element with css "([^"]*)"$/
            */
            public function iClickOnTheElementWithcss($css)
            {
            $session = $this->getSession(); // get the mink session
            $element = $session->getPage()->find('css',$session->getSelectorsHandler()->selectorToXpath('css', $css)); // runs the actual query and returns the element
            // errors must not pass silently
            if (null === $element)
            {
            throw new \InvalidArgumentException(sprintf('Could not evaluate css: "%s"', $css));
            }

           // ok, let's click on it
            $element->click();
            }
            /**
              * @Then I fetch the href of CSS :css
              */
              public function iFetchTheHrefOfCss($css){
                $actualhref = self::iFetchTheHrefOfclassName($css);
                echo "The href is: ". $actualhref;
              }
            /**

              * @Then I fetch the href of className :css
            */
            public function iFetchTheHrefOfclassName($css)
            {
              $session=$this->getSession();
              $actuallink = $session->getPage()->find("css",$css);
              if ($actuallink === null)
              {
                throw new Exception("The actuallink was not found!");
              }
              else
              {
                 $actualhref = ((string)$actuallink->getAttribute('href'));
                 return $actualhref;
                 	echo "The href fetched is: ". $actualhref;
              }

            }
  /**
  * @Then I match the href :href of CSS :css
  */
  public function iMatchTheHrefOfCSS($expectedhref,$css){
    $actualhref = self::iFetchTheHrefOfclassName($css);
    if ($actualhref !== $expectedhref) {
      throw new \Exception("Expected href {$expectedhref} not found");
    }
  }


  /**
      * @Given I switch to the new :window tab
      */
     public function switchToTheNewWindow()
     {
         $windowNames = $this->getSession()->getWindowNames();
         if(count($windowNames) > 1) {
              $this->getSession()->switchToWindow($windowNames[1]);
         } else{
              throw new Exception("There is not a tab to switch to");
         }
     }


}
