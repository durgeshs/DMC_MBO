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
     * @Then I should be able to select from dropdownValue
     *
     */
    public function processDrpdown($selectedVal) {
        echo "Selected value in php ".$selectedVal;
    }

    if ($_POST['dropdownValue']){
        //call the function or execute the code
        processDrpdown($_POST['dropdownValue']);
    }


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
    * this method is called to get the href of a particular form
    * @Then I fetch the href of className :css
    */
    public function iFetchTheHrefOfclassName($css)
    {
      $session=$this->getSession();
      $actuallink = $session->getPage()->find("css",$css);
      echo "href";
      if ($actuallink === null)
      {
        throw new Exception("The actuallink was not found!");
      }
      else
      {
         $actualhref = ((string)$actuallink->getAttribute('href'));
         return $actualhref;
      }
      echo "actuallink";
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
  * @Then I wait for :time seconds
  */
  public function iWaitForSeconds($time)
  {
    sleep($time);
  }

  /**
      * @When I press the Button :CSS
      */
     public function iPressTheButton($CSS)
     $session = $this->getSession();
     $regionObj = $session->getPage();
     $regionText = $regionObj->find('css',$css);
     if (NULL===$regionText) {
       return false;
     {
         throw new PendingException();
     }



}
