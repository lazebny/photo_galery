module Adminable::Post
  extend ActiveSupport::Concern

  included do
    rails_admin do
      field :title
      field :content, :ck_editor
      field :image
    end
  end
end
