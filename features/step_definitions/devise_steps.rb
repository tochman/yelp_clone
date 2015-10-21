And(/^within "([^"]*)" I fill in "([^"]*)" with "([^"]*)"$/) do |form, field, value|
  case form
    when 'Sign up'
      element = 'new_user'
  end
  within "form##{element}" do
    fill_in field, with: value
  end
end

And(/^within "([^"]*)" I click "([^"]*)"$/) do |form, link|
  case form
    when 'Sign up'
      element = 'new_user'
  end
  within "form##{element}" do
    click_link_or_button link
  end
end

Given(/^I am logged in$/) do
  steps %Q{
    Given I visit the root path
    And I click "Sign up"
    And within "Sign up" I fill in "Username" with "tochman"
    And within "Sign up" I fill in "Email" with "thomas@random.com"
    And within "Sign up" I fill in "Password" with "password"
    And within "Sign up" I fill in "Password confirmation" with "password"
    And within "Sign up" I click "Sign up"
        }
end