class Workout < ActiveRecord::Base
  
  belongs_to :user
  has_many :exercises

  validates :name, presence: true

  scope :recent, -> {order("created_at DESC")}
end
