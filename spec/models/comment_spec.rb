require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Fixtures' do
    it 'should have valid Fixture Factory' do
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end

  describe 'attributes' do
    it { is_expected.to have_db_column(:body ).of_type(:text) }
  end

  describe 'associations' do
    it { is_expected.to belong_to :restaurant}
  end
end
