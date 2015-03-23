class CreateExcercises < ActiveRecord::Migration
  def change
    create_table :excercises do |t|
      t.string :type
      t.integer :sets
      t.integer :reps
      t.time :time
      t.integer :distance
      t.integer :workout_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :excercises, :workouts
  end
end
