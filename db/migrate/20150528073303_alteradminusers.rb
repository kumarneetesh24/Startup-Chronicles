class Alteradminusers < ActiveRecord::Migration
  def change
  	add_column("admin_users","visible",:boolean,:default=>false)
  end
end
