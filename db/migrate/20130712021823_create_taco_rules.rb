class CreateTacoRules < ActiveRecord::Migration
  def change
    create_table :taco_rules do |t|
      t.string  :description
      t.integer :team_id
    end
  end
end
