class AccessController < ApplicationController
  layout 'admin', :except => [:login,:attempt_login]
 before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
    @user= AdminUser.find(session[:user_id])
     
  end

  def login
  end

  def attempt_login
  	if params[:username].present?&&params[:password].present?
  		found_user= AdminUser.where(:username => params[:username]).first
  		if found_user
  			authorized_user=found_user.authenticate(params[:password])
  		end
  	end
  	if authorized_user
  		session[:user_id]= authorized_user.id 
  		session[:user_name]=authorized_user.username
  		flash[:notice]="successfully logged in"
  		redirect_to(:action =>'index')
  	else
  		flash[:notice]="incorrect username or password"
  		render(:action => 'login')
  	end
  end

  def logout
  	session[:user_id]=nil
  	session[:user_name]=nil
  	flash[:notice]="successfully logout"
  	redirect_to(:action=>'login')
  end
end
