class AddUsertoWorkouts < ActiveRecord::Migration
  def change
    add_reference :workouts, :user, index: true
  end
end
