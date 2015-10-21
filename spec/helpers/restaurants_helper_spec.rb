require 'rails_helper'

RSpec.describe RestaurantsHelper, type: :helper do
  let(:restaurant) { FactoryGirl.create(:restaurant) }


  describe '#image_url' do
    let(:restaurant_with_url) { FactoryGirl.create(:restaurant, image_url: 'http://www.whatever.com/image.jpg') }
    it 'returns default url if no image_url present' do
      expect(helper.image_url(restaurant)).to eq 'http://www.pricepoint.com/_ProductImages/NoImageFound/Default/960x600/no_image_found.jpg'
    end

    it 'returns url if image_url present' do
      expect(helper.image_url(restaurant_with_url)).to eq 'http://www.whatever.com/image.jpg'
    end

  end

  describe '#calculated_rating' do
    let(:restaurant_with_comments) { FactoryGirl.create(:restaurant, name: 'Rest with comments') }

    it 'returns initial rating if no comments present' do
      expect(helper.calculated_rating(restaurant)).to eq 1.0
    end

    it 'returns initial rating' do
      restaurant_with_comments.comments.create(rating: 1)
      restaurant_with_comments.comments.create(rating: 2)
      restaurant_with_comments.comments.create(rating: 3)
      expect(helper.calculated_rating(restaurant_with_comments)).to eq 2.0
    end
  end
end
