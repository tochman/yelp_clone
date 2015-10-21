Then(/^I should see an index of "([^"]*)"$/) do |model|
  expect(page).to have_selector("div#index_table_#{model.downcase}")
end


And(/^I should see ([^"]*) "([^"]*)" record (?:row|rows$)/) do |count, model|
  within "div#index_table_#{model.downcase}" do
    expect(page).to have_selector('article', count: count.to_i)
  end
end

When(/^I click the "([^"]*)" link for "([^"]*)"$/) do |link, item|
  page.all('article').each do |article|
    next unless article.has_text?(item)
    within(article) do
      click_link link.humanize
    end
  end
end

Then(/^I should be on the "([^"]*)" page for "([^"]*)"$/) do |page, object|
  restaurant = Restaurant.find_by(name: object)
  case page.downcase
    when 'show'
      visit restaurant_path(restaurant)
  end
end

Given(/^there are no restaurants in the system$/) do
  Restaurant.all.each do |restaurant|
    restaurant.destroy
  end
end