class Barn < ApplicationRecord
  serialize :images, Hash
  serialize :amenities, Array
  has_many :stalls
  has_many :horses, through: :stalls
  has_many :paddocks
  has_many :orders
  has_many :supplies, through: :orders
  has_many :users

end
