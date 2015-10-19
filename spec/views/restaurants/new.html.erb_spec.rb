require 'rails_helper'

RSpec.describe 'restaurants/new', type: :view do
  before do
    @restaurant = assign(:restaurant, FactoryGirl.create(:restaurant))
  end

  it 'renders new restaurant form' do
    render
    expect(rendered).to have_selector "form[action='#{restaurants_path}/#{@restaurant.id}'][method='post']"
  end
end
