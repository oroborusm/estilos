class Post < ActiveRecord::Base
	belongs_to :fotito
	mount_uploader :foto, FotoUploader
end
