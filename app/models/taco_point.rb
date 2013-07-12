class TacoPoint < ActiveRecord::Base
	validates :user_id, :taco_rule_id, presence: true

	belongs_to :user, counter_cache: true
end
