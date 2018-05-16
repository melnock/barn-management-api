class Meal < ApplicationRecord
  belongs_to :supply
  belongs_to :horse
end
