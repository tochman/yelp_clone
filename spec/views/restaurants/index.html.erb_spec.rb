require 'rails_helper'

RSpec.describe 'restaurants/index', type: :view do
  before(:each) do
    assign(:restaurants, [
      FactoryGirl.create(:restaurant, name: 'MyBestJoint'),
      FactoryGirl.create(:restaurant)
    ])
  end

  it 'renders a list of restaurants' do
    render
    expect(rendered).to have_text 'MyBestJoint'
  end
end
