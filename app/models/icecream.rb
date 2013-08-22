class Icecream < ActiveRecord::Base
  attr_accessible :name, :price, :image, :remote_image_url
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  mount_uploader :image, ImageUploader
end
