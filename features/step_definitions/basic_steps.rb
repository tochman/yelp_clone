Given(/^I visit the root path$/) do
  visit root_path
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_text content
end

Given(/^I click "(.*?)"$/) do |element|
  click_link_or_button element
end

Then(/^I should see a create restaurant form$/) do
  expect(page).to have_css 'form'
end


Given(/^I am on the "([^"]*)" page$/) do |page|
  case page.downcase
    when 'home'
      visit root_path
    when 'new restaurant'
      visit new_restaurant_path
  end
end