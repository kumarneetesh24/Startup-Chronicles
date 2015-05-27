class AdminUser < ActiveRecord::Base

	has_many :articles
	has_secure_password

	scope :sorted , lambda{ order("created_at ASC")}

	def name 
		"#{first_name} #{last_name}"
	end
end
