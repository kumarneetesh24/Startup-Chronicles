class Alterarticles < ActiveRecord::Migration
  def change
  	add_column("articles","position",:integer)
  	add_column("articles","visible",:boolean,:default=>false)
  end
end
