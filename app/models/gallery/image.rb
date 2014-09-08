class Gallery::Image < PhotoGallery::Base
  include Adminable::Gallery::Image

	belongs_to :gallery

  delegate :name, to: :gallery, prefix: true, allow_nil: true

	mount_uploader :src, ::GalleryImageUploader

  def cache_key
    [
      id,
      updated_at
    ].join '_'
  end
end
