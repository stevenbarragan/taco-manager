class AddDemoUsers < ActiveRecord::Migration

  def self.create_user(name, team_id)
    team = Team.find(team_id)
    team.users.create! name: name
  end

  def self.up
    create_user 'iwano Calderon', 1
    create_user 'Steven barragan', 1
    create_user 'Eddy Bautista', 1
    create_user 'Marco Medina', 1
    create_user 'Vivis Palacios', 1
    create_user 'Herman Moreno', 1

    create_user 'Beto Vallejo', 2
    create_user 'Erika Mejia', 2
    create_user 'Gusano Robles', 2
    create_user 'Isay Sosa', 2
    create_user 'Jaime Victoria', 2
    create_user 'Paul Estrada', 2

    create_user 'Chalo Fernandez', 3
    create_user 'El Champ', 3
    create_user 'Edmundo Perez', 3
    create_user 'Victor Pitt', 3
    create_user 'Jonathan Garay', 3
    create_user 'Mumo Carlos', 3
  end

  def self.down
    raise IrreversibleMigration
  end
end
