require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  subject { FactoryGirl.create(:restaurant) }

  describe 'Fixtures' do
    it 'should have valid Fixture Factory' do
      expect(subject).to be_valid
    end
  end

  describe 'attributes' do
    it { is_expected.to have_db_column(:name ).of_type(:string) }
    it { is_expected.to have_db_column(:rating).of_type(:integer) }
  end

  describe 'associations' do

    it { is_expected.to have_many :comments }

    it 'creates a comment' do
      comment = subject.comments.create(body: 'MyComment')
      expect(comment.restaurant).to eq subject
    end
  end

end
