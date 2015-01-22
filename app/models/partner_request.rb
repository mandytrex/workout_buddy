class PartnerRequest < ActiveRecord::Base
	belongs_to :requester, foreign_key: "requester_id", class_name: "User"
	belongs_to :receiver, foreign_key: "receiver_id", class_name: "User"
end