class AddDemoTacoRules < ActiveRecord::Migration

  def self.create_taco_rule(description, team_id)
    team = Team.find(team_id)
    team.taco_rules.create! description: description
  end

  def self.up
    create_taco_rule 'Yolo Driven Development', 1
    create_taco_rule 'Divception', 1
    create_taco_rule 'console.logs', 1
    create_taco_rule 'Late without notice', 2
    create_taco_rule 'Newbie', 2
    create_taco_rule 'Broken Tests', 2
    create_taco_rule 'Late without notice', 3
    create_taco_rule 'Broken Tests', 3
  end

  def self.down
    raise IrreversibleMigration
  end
end
