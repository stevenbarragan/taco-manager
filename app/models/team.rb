class Team < ActiveRecord::Base
	validates :name, presence: true

	has_many :users
  has_many :taco_rules

end
