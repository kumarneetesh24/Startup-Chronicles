class AdminUser < ActiveRecord::Base
	 
	has_many :articles
	has_secure_password

	scope :sorted , lambda{ order("created_at ASC")}
	scope :visible, lambda{where(:visible => true)}

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :first_name, :presence => true,
                         :length => { :maximum => 25 }
	validates :last_name, :presence => true,
	                        :length => { :maximum => 50 }
	validates :username, :length => { :within => 8..25 },
	                       :uniqueness => true
	validates :email, :presence => true,
	                    :length => { :maximum => 100 },
	                    :format => EMAIL_REGEX,
	                    :confirmation => true
	validates :password, :confirmation => true                    
	validates_confirmation_of :password
	def name 
		"#{first_name} #{last_name}"
	end

	def username_is_allowed
    if FORBIDDEN_USERNAMES.include?(username)
      errors.add(:username, "username already in use.")
    end
  end
end
