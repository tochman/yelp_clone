require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  let(:valid_attributes) { { name: 'MyJoint',
                             rating: 4 } }

  context 'GET #index' do

    before do
      5.times do
        FactoryGirl.create(:restaurant)
      end
      get :index
    end
    it 'should render index page for projects' do
      expect(response).to render_template 'index'
    end

    it 'should assign Restaurant.all to @restaurants' do
      expect(assigns(:restaurants).count).to eq 5
    end

  end

  context 'GET #show' do
    let(:restaurant) { FactoryGirl.create(:restaurant, name: 'MyJoint', rating: 4)}

    it 'should render index page for projects' do
      get :show, { id: restaurant.id }
      expect(response).to render_template 'show'
    end

    it 'assigns @restaurant' do
      get :show, { id: restaurant.id }
      expect(assigns(:restaurant)).to eq restaurant
    end
  end
end
