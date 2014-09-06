class Post < PhotoGallery::Base
  include Adminable::Post

  mount_uploader :image, PostImageUploader

  def to_param
    [id, title.parameterize].join '-'
  end
end
