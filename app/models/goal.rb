class Goal < ActiveRecord::Base
	validates :goal_name, presence: true
	
	belongs_to :partner
	has_and_belongs_to_many :users


	def make_goal_for_user(user_id)
    user = User.find(user_id)
    user.goals.push(self)
    user.partner.goals.push(self)
  end

end