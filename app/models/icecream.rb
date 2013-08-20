class Icecream < ActiveRecord::Base
  attr_accessible :name, :price
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
