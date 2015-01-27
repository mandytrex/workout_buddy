class Day < ActiveRecord::Base
	validates :day, presence: true
	
	has_and_belongs_to_many :users
end