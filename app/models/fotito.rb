class Fotito < ActiveRecord::Base
	has_many :posts

	mount_uploader :imagen, FotoUploader
end
