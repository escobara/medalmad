class AddAttachmentPhotoToDisciplines < ActiveRecord::Migration
  def self.up
    change_table :disciplines do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :disciplines, :photo
  end
end
