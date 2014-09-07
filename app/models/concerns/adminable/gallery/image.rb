module Adminable::Gallery::Image
  extend ActiveSupport::Concern

  included do
    rails_admin do
      parent ::Gallery

      list do
        field :id
        field :src
        field :gallery
        field :created_at

        items_per_page 5
      end
    end
  end
end
