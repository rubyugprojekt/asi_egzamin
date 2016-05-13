class AddAttachmentSerialImgToSerials < ActiveRecord::Migration
  def self.up
    change_table :serials do |t|
      t.attachment :serial_img
    end
  end

  def self.down
    remove_attachment :serials, :serial_img
  end
end
