class Farrier < ApplicationRecord
  has_many :horses
  has_many :barns, through: :horses
end
