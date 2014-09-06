module Adminable::Post
  extend ActiveSupport::Concern

  included do
    rails_admin do
    end
  end
end
