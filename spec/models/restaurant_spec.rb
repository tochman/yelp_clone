require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'Fixtures' do
    it 'should have valid Fixture Factory' do
      expect(FactoryGirl.create(:restaurant)).to be_valid
    end
  end

  describe 'attributes' do
    it { is_expected.to have_db_column(:name ).of_type(:string) }
    it { is_expected.to have_db_column(:rating).of_type(:integer) }
  end

  describe 'validations' do

  end

end
