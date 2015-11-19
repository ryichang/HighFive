class Compliment < ActiveRecord::Base
	belongs_to :user
	# belongs_to :recipient, class_name: "User"
	# belongs_to :complimentor, class_name: "User"	
end
