class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
    	t.string "first_name", :limit => 25
    	t.string "last_name", :limit => 25
    	t.string "username", :limit => 40
    	t.string "email", :limit =>100, :default => "",:null => false
    	t.string "password_digest"
      t.timestamps null: false
    end
  end
end
