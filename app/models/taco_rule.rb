class TacoRule < ActiveRecord::Base
  validates :team_id, :description, presence: true

  belongs_to :team
end
