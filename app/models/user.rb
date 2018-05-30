class User < ApplicationRecord
  has_secure_password
  belongs_to :barn
  has_many :horses
  has_many :workouts
  has_many :orders, foreign_key: "manager_id"
  has_many :shifts, foreign_key: "employee_id"
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :mailing_address, presence: true, uniqueness: true
  validates :emergency_contact, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

end
