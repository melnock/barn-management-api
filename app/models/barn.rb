class Barn < ApplicationRecord
  serialize :images, Hash
  serialize :amenities, Array
  has_many :stalls
  has_many :horses, through: :stalls
  has_many :paddocks
  has_many :orders
  has_many :supplies, through: :orders
  has_many :horse_owners, foreign_key: "user_id", class_name: "User"
  has_many :employees, foreign_key: "user_id", class_name: "User"
  has_many :managers, foreign_key: "user_id", class_name: "User"

end
