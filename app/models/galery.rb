class Galery < ActiveRecord::Base
  has_many :images, class_name: '::Galery::Image'
end
