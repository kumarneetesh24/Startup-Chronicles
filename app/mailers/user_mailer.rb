class UserMailer < ApplicationMailer
	default :from => 'admin@startup.com'

    def send_query_email(user,name,email,subject,message)
	 	@user=user
	 	@name=name
	 	@email= email
	 	@subject=subject
	 	@message=message
		mail( :to => @user.email,
		 :subject => 'message from startup chronicles')
	end	
end
