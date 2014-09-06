module Adminable::Gallery
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :name
        field :created_at
      end
      # edit do
        # field :name
      # end
    end
  end
end
