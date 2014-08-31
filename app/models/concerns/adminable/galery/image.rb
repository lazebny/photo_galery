module Adminable::Galery::Image
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent 'Galery'
    end
  end
end