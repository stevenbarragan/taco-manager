class RemoveRulesFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :rules
  end
end
