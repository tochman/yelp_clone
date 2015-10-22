Feature: As a visitor
  In order to access all features
  I want to be able to become a registred user


  Scenario: User can sign up
    Given I visit the root path
    And I click "Sign up"
    And within "Sign up" I fill in "Username" with "tochman"
    And within "Sign up" I fill in "Email" with "thomas@random.com"
    And within "Sign up" I fill in "Password" with "password"
    And within "Sign up" I fill in "Password confirmation" with "password"
    And within "Sign up" I click "Sign up"
    Then I should see "Welcome! You have signed up successfully."