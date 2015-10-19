require 'rails_helper'

describe 'restaurants/show', type: :view do
  before do
    assign(:restaurant, FactoryGirl.create(:restaurant, name: 'MyJoint'))
  end

  it 'renders attributes' do
    render
    expect(rendered).to have_css 'h1', text: 'MyJoint'
  end
end
