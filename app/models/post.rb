class Post < ActiveRecord::Base
  mount_uploader :image, PostImageUploader

  def to_param
    [id, title.parameterize].join '-'
  end
end
