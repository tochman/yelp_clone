Feature: As application user,
  In order to add a restaurant,
  I would like to see a form for adding restaurants.

  Background:
    Given the following Restaurants exist:
      | name      | rating |
      | MyJoint   | 1      |
      | YourJoint | 4      |

  Scenario: Listing restaurants index view
    Given there are no restaurants in the system
    And I visit the root path
    Then I should see "There are no restaurants in the system"

  Scenario: Show restaurant details
    Given I visit the root path
    Then I should see an index of "Restaurants"
    And I should see 2 "Restaurants" record rows
    And I click the "Show" link for "MyJoint"
    Then I should be on the "show" page for "MyJoint"

  Scenario: Adding a restaurant
    Given I am logged in
    And I visit the root path
    And I click "Add restaurant"
    Then I should see "New Restaurant"
    And I should see a create restaurant form
    And I fill in "Name" with "NewJoint"
    And I select "3" from "Rating"
    And I click "Add restaurant"
    Then I should see an index of "Restaurants"
    And I should see 3 "Restaurants" record rows
    And I should see "Added by: tochman"
    And I should see "Restaurant NewJoint was successfully created."

