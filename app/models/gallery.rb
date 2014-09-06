class Gallery < PhotoGallery::Base
  include Adminable::Gallery

  has_many :images, class_name: '::Gallery::Image', dependent: :destroy

  def to_param
    name.downcase
  end
end
