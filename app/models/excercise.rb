class Excercise < ActiveRecord::Base
  belongs_to :workouts, dependent: :destroy
end
