object false

child @user => :user do
  attributes :id, :name, :current_tacopoints, :taco_points_count, :sponsor_count

  node(:team_id) { |u| u.team.id }
end
