class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name_of_workout, :description, :total_distance, :completion_time, :completion_date
  has_one :user
end
