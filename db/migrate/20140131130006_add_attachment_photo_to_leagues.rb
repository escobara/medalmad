class AddAttachmentPhotoToLeagues < ActiveRecord::Migration
  def self.up
    change_table :leagues do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :leagues, :photo
  end
end
