class Order < ApplicationRecord
  belongs_to :barn
  belongs_to :supply
  belongs_to :manager_id, class_name: "User"
end
