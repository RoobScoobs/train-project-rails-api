class User < ActiveRecord::Base
  include Authentication
  has_many :runs
  validates :email, uniqueness: true
end
