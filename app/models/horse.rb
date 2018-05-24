class Horse < ApplicationRecord
  serialize :supplements, Array
  serialize :tack, Hash
  serialize :blankets, Hash

  belongs_to :stall
  belongs_to :paddock
  belongs_to :user
  belongs_to :vet
  belongs_to :farrier
  has_many :healthreports
  # has_many :workouts
  # has_many :meals
  # has_many :supplies, through: :meals
end
