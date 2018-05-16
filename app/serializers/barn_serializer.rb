class BarnSerializer < ActiveModel::Serializer
  attributes :id, :name, :number_of_paddocks, :number_of_stalls, :address, :board_cost, :amenities, :images
end
