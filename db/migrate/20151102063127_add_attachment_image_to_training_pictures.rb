class AddAttachmentImageToTrainingPictures < ActiveRecord::Migration
  def self.up
    change_table :training_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :training_pictures, :image
  end
end
