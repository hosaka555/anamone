class Request < ActiveRecord::Base
   
   mount_uploader :image, ImageUploader
    # get_primary_key :email
    #quoted_table_name :request
    
    #belongs_to :user
end
