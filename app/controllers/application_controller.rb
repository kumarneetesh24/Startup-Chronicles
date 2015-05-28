class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

   def only_admin
    @user= AdminUser.find(session[:user_id])
     if @user.visible == false
     redirect_to('/404.html') 
   end
  end

  def confirm_logged_in
  	unless session[:user_id]
  		flash[:notice]="please log in"
  		redirect_to(:controller =>'access',:action=>'login')
  		return false
  	else
  		return true
  	end
  end
end
