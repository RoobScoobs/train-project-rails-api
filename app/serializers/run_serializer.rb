class RunSerializer < ActiveModel::Serializer
  attributes :id, :description, :total_miles, :total_time, :completion_date
end
