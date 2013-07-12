class AddCounterCacheToUsers < ActiveRecord::Migration
  def up
    add_column :users, :taco_points_count, :integer, null: false, default: 0
    remove_column :users, :total_tacopoints
  end

  def down
    remove_column :users, :taco_points_count
    add_column :users, :total_tacopoints, :integer, default: 0
  end
end
