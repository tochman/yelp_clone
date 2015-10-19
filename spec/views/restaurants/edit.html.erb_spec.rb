require 'rails_helper'

RSpec.describe 'restaurants/edit', type: :view do
  before do
    @restaurant = assign(:restaurant, FactoryGirl.create(:restaurant))
  end

  it 'renders the edit restaurant form' do
    render
    expect(rendered).to have_selector "form[action='#{restaurant_path(@restaurant)}'][method='post']"
  end
end
