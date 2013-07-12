class AddDemoTacoPoints < ActiveRecord::Migration

  def self.create_taco_point(user_id, taco_rule_id)
    user = User.find(user_id)
    user.taco_points.create! taco_rule_id: taco_rule_id
  end

  def self.up
    create_taco_point 2, 2
    create_taco_point 2, 2
    create_taco_point 2, 2
    create_taco_point 3, 3
    create_taco_point 3, 3
    create_taco_point 4, 1
    create_taco_point 4, 1
    create_taco_point 5, 1

  end

  def self.down
    raise IrreversibleMigration
  end
end
