class Goal < ActiveRecord::Base
	validates :goal, presence: true
	
	belongs_to :group
end