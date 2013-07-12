class User < ActiveRecord::Base
	validates :name, :team_id, presence: true

	belongs_to :team
	has_many :taco_points
end
