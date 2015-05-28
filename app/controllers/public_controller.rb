class PublicController < ApplicationController
  

    def index
	   @public= Article.paginate(page: params[:page],per_page:15).sorted
 	end


	def show 
		@public=Article.find(params[:id])
	end

	def about_us
	
	end

	def contact_us

	end

	def query
		@name= params["name"]
		@email= params["email"]
		@subject= params["subject"]
		@message= params["message"]
		@user= AdminUser.visible
		@user.each do |f|
			UserMailer.send_query_email(f,@name,@email,@subject,@message).deliver
		end
		flash[:notice]="query has been sent"
		redirect_to(:action => 'contact_us')
	end

end
