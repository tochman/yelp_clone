Then(/^show me the page$/) do
  save_and_open_page
end

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


Given(/^I (?:should be|am) on the "([^"]*)" page$/) do |page|
  case page.downcase
    when 'home'
      visit root_path
    when 'new restaurant'
      visit new_restaurant_path
  end
end

Given(/^the following ([^"]*) exist:$/) do |model, table|
  class_name = model.singularize.constantize
  table.hashes.each do |hash|
    instance = class_name.new(hash)
    instance.user = User.last if class_name != User
    instance.save
  end
end

And(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

And(/^I select "([^"]*)" from "([^"]*)"$/) do |value, element|
  select value, from: element
end