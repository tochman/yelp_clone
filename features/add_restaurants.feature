Feature: As application user,
  In order to add a restaurant,
  I would like to see a form for adding restaurants.


  Scenario: Listing restaurants index view
    Given I visit the root path
    Then I should see "There are no restaurants in the system"

  Scenario: Adding a restaurant
    Given I visit the root path
    And I click "Add restaurant"
    Then I should see "Create Restaurant"
    And I should see a create restaurant form

  Scenario:
    Given I am on the "New Restaurant" page
