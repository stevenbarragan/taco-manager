class TacoPoints < ActiveRecord::Migration
  def change
  	create_table :taco_points do |t|
    	t.integer :user_id
    	t.string  :description
	  end
  end
end