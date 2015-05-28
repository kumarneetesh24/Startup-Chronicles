class Article < ActiveRecord::Base

	belongs_to :admin_user
	scope :sorted, lambda{ order("articles.position ASC")}
	scope :newest, lambda{ order("articles.created_at DESC")}
	scope :search, lambda{ |query| where("title LIKE ?","%#{query}%")}
	scope :visible, lambda{ where(:visible => true)}
	scope :invisible, lambda{ where(:visible => false)}

	def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
	end
end
