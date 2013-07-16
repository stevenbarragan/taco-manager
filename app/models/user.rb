class User < ActiveRecord::Base
	validates :name, :team_id, presence: true

	belongs_to :team
	has_many :taco_points

  delegate :team_name, to: :team, allow_nil: nil
end
