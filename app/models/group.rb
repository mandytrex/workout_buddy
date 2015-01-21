class Group < ActiveRecord::Base
	validates :theme, presence: true
	
	has_many :goals, dependent: :destroy
	has_and_belongs_to_many :users
end