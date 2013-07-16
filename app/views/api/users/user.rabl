object @user

attributes :id, :name, :current_tacopoints, :taco_points_count, :sponsor_count

node(:team_id) { |user| user.team.id }
