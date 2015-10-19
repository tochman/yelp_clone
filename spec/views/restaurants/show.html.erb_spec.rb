require 'rails_helper'

RSpec.describe 'restaurants/show', type: :view do
  before do
    @restaurant = assign(:restaurant, FactoryGirl.create(:restaurant, name: 'MyJoint'))
  end

  it 'renders attributes' do
    render
    expect(rendered).to have_css 'h1', text: 'MyJoint'
  end
end
