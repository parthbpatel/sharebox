class AddAttachmentUploadedFileToAssets < ActiveRecord::Migration[6.0]
  def self.up
    change_table :assets do |t|
      t.attachment :uploaded_file
    end
  end

  def self.down
    remove_attachment :assets, :uploaded_file
  end
end
