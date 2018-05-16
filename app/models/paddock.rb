class Paddock < ApplicationRecord
  belongs_to :barn
  has_many :horses
end
