class Shift < ApplicationRecord
  belongs_to :employee, class_name: "User"
  belongs_to :barn
end
