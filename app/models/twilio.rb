require 'twilio-ruby'

module Twilio

Twilio.configure do |config|
  config.account_sid = ENV['TWILIO_ACCOUNT_SID']
  config.auth_token = ENV['TWILIO_AUTH_TOKEN']
end

@client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])
# class BitlyWrapper

# 	def self.short(url)
# 		bitly = Bitly.new(ENV["BITLY_USERNAME"], ENV["BITLY_API_KEY"])
# 		bitly_result = bitly.shorten(url)
# 		shortened_url = bitly_result.short_url
# 	end

end