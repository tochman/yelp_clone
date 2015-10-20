require 'rails_helper'

RSpec.describe 'restaurants/index', type: :view do
  before(:each) do
    assign(:restaurants, [
      FactoryGirl.create(:restaurant, name: 'MyBestJoint'),
      FactoryGirl.create(:restaurant)
    ])
    render
  end

  it 'renders a list of restaurants' do
    expect(rendered).to have_text 'MyBestJoint'
  end

  it 'has a table' do
    expect(rendered).to have_css 'table'
    expect(rendered).to have_css 'tr'
  end
end
