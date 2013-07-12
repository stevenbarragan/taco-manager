class AddDemoTeams < ActiveRecord::Migration

  def self.create_team(name)
    Team.create! name: name
  end

  def self.up
    create_team 'Spree Team'
    create_team 'Retrospectus Team'
    create_team 'Billfloats Team'
  end

  def self.down
    raise IrreversibleMigration
  end
end
