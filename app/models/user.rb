class User < ActiveRecord::Base
	validates :name, :team_id, presence: true

	has_one :team
	has_many :taco_points
end