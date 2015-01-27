class PartnerRequest < ActiveRecord::Base
	belongs_to :requester, foreign_key: "requester_id", class_name: "User"
	belongs_to :receiver, foreign_key: "receiver_id", class_name: "User"


	def make_partnership(user_id)
		user = User.find(user_id)
    partner_id = user.partner.id
    partner = User.find(partner_id)
    partner.partner = user
 	end


end