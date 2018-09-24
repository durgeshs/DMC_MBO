<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {
//class FeatureContext extends BehatContext {

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
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
  }
}

/**
    * This matches the fected url and given url of class name
    *
    * @Then I match the href :href of CSS :css
    */
    public function iMatchTheHrefOfCSS($expectedhref,$css){
      $actualhref = self::iFetchTheHrefOfclassName($css);
      if ($actualhref !== $expectedhref) {
        throw new \Exception("Expected href {$expectedhref} not found");
      }
    }


/**
   * @Then the status code of :url should be 200
   */
  public function get_http_response_code($url)
  {
    $headers = get_headers($url);
    $status_code = substr($headers[0], 9, 3);
    if ($status_code == 200 )
    {

    }
    else
    {
      throw new Exception("Status code is not 200");
    }
  }


  /**

     * @Then I match the href :href of form :FormName
     */
    public function iMatchTheHrefOfForm($expectedhref,$FormName)
    {
      $actualhref = self::iFetchTheHrefOfFormName($FormName);
      $pos = strpos($actualhref, $expectedhref);
      if ($pos === false)
      {
               throw new \Exception("Expected href {$expectedhref} not found");
      }
    }
  /**


    /**
     * @Then I should see CSS :css in the :region
     *
     */
     public function iShouldSeeCssInRegion($css, $region)
     {
        $session = $this->getSession();
        $regionObj = $session->getPage()->find('region', $region);
        $regionText = $regionObj->Find('css',$css);
        if (NULL===$regionText)
        {
          throw new \Exception(sprintf('No CSS found on the region %s.', $region, $session->getCurrentUrl()));
        }
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
  * @Then I wait for :time seconds
  */
  public function iWaitForSeconds($time)
  {
    sleep($time);
  }
  /**
     * @Then compare attribute using css :css for url :url
     *
     */
   public function iCompareAttribute($css,$url)
   {
     $actualhref = self::iFetchTheHrefOfclassName($css);
     $expectedhref = $url;
     $compare = strpos($actualhref, $expectedhref);
     if ($compare === false)
     {
            throw new \Exception("Expected href {$expectedhref} not found");
     }

   }


/**
          * @When I click on CSS element :element
          *
          * @throws \Exception
          *   If region or link within it cannot be found.
          */
            public function assertClickOnElement($element) {
            $regionObj = $this->getSession()->getPage();
            // Find the css within the region
            $eleObj = $regionObj->find('css',$element);
            if (empty($eleObj)) {
              throw new \Exception(sprintf('The element '.$element.' was not found', $element, $this->getSession()->getCurrentUrl()));
            }
            $eleObj->click();
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

/** * @When /^(?:|I )select "(?P<option>\w+)" from "(?P<name>\w+)" select$/ */
public function selectState($option, $name) { $page = $this->getSession()->getPage();
  $selectElement = $page->find('xpath', '//select[@data-name = "' . $name . '"]');
  $selectElement->selectOption($option);
 }
 /**
     * @Given /^I set browser window size to "([^"]*)" x "([^"]*)"$/
     */
   public function iSetBrowserWindowSizeToX($width, $height)
   {
       $this->getSession()->resizeWindow((int)$width, (int)$height, 'current');
   }


   /**
       * @When I press the Button :CSS
       */
      public function iPressTheButton($CSS)
      {
      $session = $this->getSession();
      $regionObj = $session->getPage();
    
      if (NULL===$regionText) {
        return false;
      {
          throw new PendingException();
      }
    }
  }
}
