class Note < PhotoGallery::Base
  include Adminable::Note

  mount_uploader :image, NoteImageUploader

  def to_param
    [id, title.parameterize].join '-'
  end
end
