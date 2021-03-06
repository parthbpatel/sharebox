class Asset < ApplicationRecord
  attr_accessor :user_id, :uploaded_file


  belongs_to :user

  #set up "uploaded_file" field as attached_file (using Paperclip)
  has_attached_file :uploaded_file

  validates_attachment_size :uploaded_file, :less_than => 10.megabytes
  validates_attachment_presence :uploaded_file
end
