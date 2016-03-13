class Upload < ActiveRecord::Base
   mount_uploader :name, ImageUploader
   validates_presence_of :name

end