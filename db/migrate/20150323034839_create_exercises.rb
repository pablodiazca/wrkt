class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :type
      t.integer :sets
      t.integer :reps
      t.time :time
      t.integer :distance
      t.integer :workout_id

      t.timestamps null: false
    end
  end
end
