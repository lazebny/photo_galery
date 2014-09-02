class Note < ActiveRecord::Base
  mount_uploader :image, NoteImageUploader

  def to_param
    [id, title.parameterize].join '-'
  end
end
