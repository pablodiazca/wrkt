class Workout < ActiveRecord::Base
  
  belongs_to :user

  validates :name, presence: true

    scope :recent, -> {order("created_at DESC")}
end
