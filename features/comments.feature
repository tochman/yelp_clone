Feature: As application user,
  In order to add a review/comment to a restaurant,
  I would like to see a form for adding comments.

  Background:
    Given the following Restaurants exist:
      | name    | rating |
      | MyJoint | 1      |


  Scenario: Adding a comment
    Given I visit the root path
    And I click the "Show" link for "MyJoint"
    And I click "Comment"
    And I fill in "Body" with "My comment"
    And I select "3" from "Rating"
    And I click "Add comment"
    Then I should be on the "show" page for "MyJoint"
    And I should see "My comment"
    #Then show me the page
    And I should see "Your comment was added. Thank you!"
