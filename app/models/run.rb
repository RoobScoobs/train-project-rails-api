# Run Model
class Run < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
end
