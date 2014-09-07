class Gallery::Image < PhotoGallery::Base
  include Adminable::Gallery::Image

	belongs_to :gallery

  delegate :name, to: :gallery, prefix: true, allow_nil: true

	mount_uploader :src, ::GalleryImageUploader
end
