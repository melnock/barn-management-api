class Supply < ApplicationRecord
  serialize :protein_fiber_fat, Hash 

  has_many :orders
  has_many :barns, through: :orders
end
