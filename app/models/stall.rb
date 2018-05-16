class Stall < ApplicationRecord
  belongs_to :barn
  has_one :horse
end
