class Detail < ApplicationRecord
	belongs_to :user,  :optional => true
	self.primary_key = "phone_id"
	validates :phone_id, numericality: { only_integer: true}


	validates :phone_number, length: {minimum: 9, maximum: 11}, allow_blank: false
	validates_uniqueness_of :phone_id,message: 'Same ID exist'
	validates_presence_of :phone_id, message: 'Please insert phone id' 
	validates_presence_of :phone_number, message: 'Please enter your phone number' 


end
