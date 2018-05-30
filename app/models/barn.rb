class Barn < ApplicationRecord
  serialize :images, Hash
  serialize :address, Hash
  serialize :amenities, Array
  has_many :stalls
  has_many :horses, through: :stalls
  has_many :paddocks
  has_many :orders
  has_many :supplies, through: :orders
  has_many :users
  validates :number_of_stalls, presence: true
  validates :number_of_paddocks, presence: true
  validates :number_of_stalls, presence: true
  validates :ammenities, presence: true
  validates :board_cost, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :number_of_stalls, presence: true

end
