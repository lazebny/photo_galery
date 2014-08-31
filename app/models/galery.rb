class Galery < ActiveRecord::Base
  has_many :images, class_name: '::Galery::Image', dependent: :destroy

  def to_param
    name.downcase
  end
end
