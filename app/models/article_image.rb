class ArticleImage < ActiveRecord::Base
	
	belongs_to :article
	has_attached_file :photo, :styles => {:medium => "300x300>", :thumb => "100x100#"}
	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
