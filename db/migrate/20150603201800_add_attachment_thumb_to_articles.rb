class AddAttachmentThumbToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :thumb
    end
  end

  def self.down
    remove_attachment :articles, :thumb
  end
end
