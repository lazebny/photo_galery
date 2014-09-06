module Adminable::Post
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :title
        field :created_at
      end

      edit do
        field :title
        field :content, :ck_editor
        field :image
      end
    end
  end
end
