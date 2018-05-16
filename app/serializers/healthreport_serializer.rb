class HealthreportSerializer < ActiveModel::Serializer
  attributes :id, :horse_id, :hay, :water, :grain, :comments, :manure
end
