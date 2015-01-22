class User < ActiveRecord::Base
	validates_presence_of :first_name, :email, :age, :image_url
	validates :username, presence: true, uniqueness: true

	has_secure_password
	
	has_and_belongs_to_many :activities
	has_and_belongs_to_many :goals

	belongs_to :partner, class_name: "User", foreign_key: "partner_id"

end