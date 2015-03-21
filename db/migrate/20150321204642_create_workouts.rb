class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :mood

      t.timestamps null: false
    end
  end
end
