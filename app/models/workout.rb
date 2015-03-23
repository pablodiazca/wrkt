class Workout < ActiveRecord::Base
  
  belongs_to :user
  has_many :excercises

  validates :name, presence: true

    scope :recent, -> {order("created_at DESC")}
end
