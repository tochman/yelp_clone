class Restaurant < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user

  after_create do
    self.image_url = nil if self.image_url.empty?
  end
end
