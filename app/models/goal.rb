class Goal < ActiveRecord::Base
	validates :goal_name, presence: true
	validates :end_date, :presence => { :value => true, :message => 'Invalid date' }
	
	belongs_to :partner
	has_and_belongs_to_many :users


	def make_goal_for_user(user_id)
    user = User.find(user_id)
    user.goals.push(self)
    user.partner.goals.push(self)
  end

  def send_text(user, message)
		@client = Twilio::REST::Client.new
		twilio_phone_number = '6319047046'


			@client.messages.create(
				from: twilio_phone_number,
  			to: user,
  			body: message
				)

	end

end