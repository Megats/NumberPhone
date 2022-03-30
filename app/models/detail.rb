class Detail < ApplicationRecord
	belongs_to :user,  :optional => true
end
