module Adminable::Note
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :title
        field :link
        field :created_at
      end

      edit do
        field :title
        field :content, :ck_editor
        field :image
        field :link
      end
    end
  end
end
