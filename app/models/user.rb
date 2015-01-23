class User < ActiveRecord::Base
	validates_presence_of :first_name, :email, :age, :avatar
	validates :username, presence: true, uniqueness: true

  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	has_secure_password
	
	has_and_belongs_to_many :activities
	has_and_belongs_to_many :goals

	belongs_to :partner, class_name: "User", foreign_key: "partner_id"

end