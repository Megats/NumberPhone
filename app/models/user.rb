class User < ApplicationRecord
	has_many :details
	self.primary_key = "user_id"
end

