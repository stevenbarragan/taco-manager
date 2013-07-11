class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string  :name
    	t.integer :team_id
    	t.integer :current_tacopoints, default: 0
    	t.integer :total_tacopoints, default: 0
    	t.integer :sponsor_count, default: 0
    end
  end
end