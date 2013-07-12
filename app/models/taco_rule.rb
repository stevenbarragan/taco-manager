class TacoRule < ActiveRecord::Base
  validates :team_id, :description

  belongs_to :team
end
