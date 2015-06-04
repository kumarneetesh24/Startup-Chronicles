class PublicController < ApplicationController
  
	layout 'mypublic' ,:except => :show

    def index
	   @public= Article.visible.paginate(page: params[:page],per_page:15).sorted
 	end


	def show 
		@public=Article.find(params[:id])
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
		redirect_to(:action => 'index')
	end

end
