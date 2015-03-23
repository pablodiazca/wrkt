class ChangeColumnNameTypeInExercise < ActiveRecord::Migration
  def change
    rename_column :exercises, :type, :name
  end
end
