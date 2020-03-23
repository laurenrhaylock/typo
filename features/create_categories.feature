Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Yay"
    And I fill in "category_permalink" with "We Did It"
    And I fill in "category_description" with "Congrats"
    And I press "Save"
    Then I should see "Foobar"
    Then I should see "Yay"
    Then I should see "We Did It"
    Then I should see "Congrats"
    
    Then I follow "Foobar"
    
    When I fill in "category_name" with "Foobar1"
    And I fill in "category_keywords" with "Yay1"
    And I fill in "category_permalink" with "We Did It1"
    And I fill in "category_description" with "Congrats1"
    And I press "Save"
    Then I should see "Foobar1"
    Then I should see "Yay1"
    Then I should see "We Did It1"
    Then I should see "Congrats1"