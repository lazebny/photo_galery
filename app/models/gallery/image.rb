class Gallery::Image < PhotoGallery::Base
  include Adminable::Gallery::Image

	belongs_to :gallery

	mount_uploader :src, ::GalleryImageUploader
end
