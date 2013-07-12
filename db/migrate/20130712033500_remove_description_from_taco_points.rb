class RemoveDescriptionFromTacoPoints < ActiveRecord::Migration
  def change
    remove_column :taco_points, :description
    add_column :taco_points, :taco_rule_id, :integer
  end
end
