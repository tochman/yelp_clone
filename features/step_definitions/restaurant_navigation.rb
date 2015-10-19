Then(/^I should see an index of "([^"]*)"$/) do |model|
  expect(page).to have_selector("table#index_table_#{model.downcase}")
end


And(/^I should see ([^"]*) record (?:row|rows$)/) do |count|
  within 'tbody' do
    expect(page).to have_selector('tr', count: count.to_i)
  end
end

When(/^I click the "([^"]*)" link for "([^"]*)"$/) do |link, item|
  page.all('table tr').each do |tr|
    next unless tr.has_text?(item)
    within(tr) do
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