class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.references :admin_user
    	t.string :title
    	t.text :body
      t.timestamps null: false
    end
    add_index("articles", "admin_user_id")
  end
end
