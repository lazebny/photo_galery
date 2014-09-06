module Adminable::Gallery::Image
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent ::Gallery

      list do
        field :src
        field :gallery
        field :created_at
      end
    end
  end
end
