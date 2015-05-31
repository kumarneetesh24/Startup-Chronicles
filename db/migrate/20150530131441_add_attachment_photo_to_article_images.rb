class AddAttachmentPhotoToArticleImages < ActiveRecord::Migration
  def self.up
    change_table :article_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :article_images, :photo
  end
end
