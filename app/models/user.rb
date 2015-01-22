class User < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :age, :image_url
	validates :username, presence: true, uniqueness: true

	has_secure_password
	has_and_belongs_to_many :partners
	has_and_belongs_to_many :activities
end