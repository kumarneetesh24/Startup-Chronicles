class AdminusersController < ApplicationController

 before_action :confirm_logged_in 
 before_action  :only_admin
  def index
  	@adminusers= AdminUser.sorted
    
  end

  def new
  	@adminusers= AdminUser.new()
  end

  def create
  	@adminusers= AdminUser.new(admin_params)
  	if @adminusers.save
  		flash[:notice]="New user created successfully"
  		redirect_to(:action => 'index')
  	else render('new')
  	end
  end

  def edit
  	@adminusers=AdminUser.find(params[:id])
  end

  def update
  	@adminusers= AdminUser.find(params[:id])
  	if @adminusers.update_attributes(admin_params)
  		flash[:notice]="user updated successfully"
  		redirect_to(:action => 'index')
  	else render('edit')
  	end
  end

  def delete
  	@adminusers=AdminUser.find(params[:id])
  end

  def destroy
  	@adminusers= AdminUser.find(params[:id])
  	@adminusers.destroy
  	redirect_to(:action => 'index')
  end

  private

  def admin_params
  	params.require(:adminusers).permit(:first_name,:last_name,:email,:password,:username,:visible)
  end



end
