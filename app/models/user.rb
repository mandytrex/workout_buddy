class User < ActiveRecord::Base
	validates_presence_of :first_name, :email, :age, :avatar
	validates :username, presence: true, uniqueness: true
	has_secure_password
	
	has_and_belongs_to_many :activities
	has_and_belongs_to_many :days
	has_and_belongs_to_many :goals

	belongs_to :partner, class_name: "User", foreign_key: "partner_id"

	def make_partnership(current_user_id)
		user = User.find(current_user_id)
		partner = user.partner
    partner.partner = user
    partner.save
 	end


 	def self.all_except(user)
  	where.not(id: user)
	end

 # 	def send_text(user, message)
	# 	@client = Twilio::REST::Client.new
	# 	twilio_phone_number = '6319047046'


	# 		@client.messages.create(
	# 			from: twilio_phone_number,
 #  			to: user,
 #  			body: message
	# 			)

	# end

end