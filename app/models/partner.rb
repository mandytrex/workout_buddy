class Partner < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

	has_many :goals, dependent: :destroy
	has_and_belongs_to_many :users
	belongs_to :coordinator, :class_name => 'User', :foreign_key => 'coordinator_id'
end