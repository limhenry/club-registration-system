class Club < ActiveRecord::Base
	has_attached_file :logo_image, :styles => { :medium => "150x150>", :thumb => "100x100>" }
    validates_attachment_presence :logo_image
    validates_attachment_content_type :logo_image, :content_type => %w(image/jpeg image/jpg image/png)
   
end