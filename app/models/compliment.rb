class Compliment < ActiveRecord::Base
	belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
	belongs_to :complimentor, class_name: "User", foreign_key: "complimentor_id"

	stores_emoji_characters :comment
	validates :comment, presence: true, length: { minimum: 1 }
	validates :comment, presence: true, length: { maximum: 200 }

end
