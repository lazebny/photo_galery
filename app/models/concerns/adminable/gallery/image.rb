module Adminable::Gallery::Image
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent ::Gallery
    end
  end
end
