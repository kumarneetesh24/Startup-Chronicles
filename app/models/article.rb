class Article < ActiveRecord::Base

	has_many :article_images, :dependent => :destroy
	accepts_nested_attributes_for :article_images
	belongs_to :admin_user
	
	 
	acts_as_list
	scope :sorted, lambda{ order("articles.position ASC")}
	scope :newest, lambda{ order("articles.created_at DESC")}
	scope :search, lambda{ |query| where("title LIKE ?","%#{query}%")}
	scope :visible, lambda{ where(:visible => true)}
	scope :invisible, lambda{ where(:visible => false)}

	validates :title, :presence => true,
					:length =>{ :maximum => 50}
	validates :body, :presence => true

	def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
	end
end
