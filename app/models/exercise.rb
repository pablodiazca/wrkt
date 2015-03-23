class Exercise < ActiveRecord::Base
  belongs_to :workouts, dependent: :destroy
  #validates :name, presence: true 
end
