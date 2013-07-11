class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :name
    	t.text   :rules
    end
  end
end