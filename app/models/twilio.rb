require 'twilio-ruby'

module Twilio

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