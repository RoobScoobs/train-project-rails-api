class User < ActiveRecord::Base
  include Authentication
  has_many :workouts
  validates :email, uniqueness: true
end
