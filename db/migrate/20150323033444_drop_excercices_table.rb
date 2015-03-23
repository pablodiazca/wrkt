class DropExcercicesTable < ActiveRecord::Migration
  def change
    drop_table :excercises
  end
end
