class Galery::Image < ActiveRecord::Base
  include Adminable::Galery::Image
	# attr_accessible :src,
	# 				:galery_id

	belongs_to :galery

	mount_uploader :src, GaleryImageUploader
end
