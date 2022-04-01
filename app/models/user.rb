class User < ApplicationRecord
	has_many :details
	self.primary_key = "user_id"

	validates :user_id, numericality: { only_integer: true}

	validates_uniqueness_of :user_id,message: 'Same ID exist'
	validates_presence_of :user_id, message: 'Please enter user id' 
	validates_presence_of :user_fullname, message: 'Please enter your name' 

end

