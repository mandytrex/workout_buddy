class Goal < ActiveRecord::Base
	validates :fitness_goal, presence: true
	
	belongs_to :partner
end