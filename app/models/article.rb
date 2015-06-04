class Article < ActiveRecord::Base

	belongs_to :admin_user
	has_attached_file :thumb , styles: { small: "64x64", med: "100x100", large: "400x900" }
	validates :thumb, :attachment_presence => true
	validates_attachment_content_type :thumb, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	 
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
