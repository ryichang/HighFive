class User < ActiveRecord::Base
	has_secure_password
	validates :email, uniqueness: true
	validates_length_of :first_name, :allow_blank => false
	validates_length_of :last_name, :allow_blank => false

	has_many :compliments_received, class_name: "Compliment", foreign_key: "recipient_id"
	has_many :compliments_given, class_name: "Compliment", foreign_key: "complimentor_id"
	has_one :location

	user = User.new
	user.valid? 
	user.errors[:email]
	user.errors.full_messages

	user.errors.clear
	user.errors.empty? 
 # def a_method_used_for_validation_purposes
 #     errors.add(:email, "Email is already taken!")
 # end

 def self.confirm(params)
 	@user = User.find_by({email: params[:email]})
 	@user.try(:authenticate, params[:password])
 end

  has_attached_file :avatar,
                    # :styles => { :medium => "150x150>", :thumb => "44x44#" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment :avatar, :presence => true,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png", "image/jpg"] },
                       :size => { :in => 0..1000.kilobytes }
	
end
