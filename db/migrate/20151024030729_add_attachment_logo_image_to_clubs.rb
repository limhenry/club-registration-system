class AddAttachmentLogoImageToClubs < ActiveRecord::Migration
  def self.up
    change_table :clubs do |t|
      t.attachment :logo_image
    end
  end

  def self.down
    remove_attachment :clubs, :logo_image
  end
end
