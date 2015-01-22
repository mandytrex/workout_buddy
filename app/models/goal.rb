class Goal < ActiveRecord::Base
	validates :fitness_goal, presence: true
	
	belongs_to :partner
	has_and_belongs_to_many :users


	def self.make_goal_for_user(user)
		user = user.id
		parter = user.parter_id
	end

end