module Adminable::Note
  extend ActiveSupport::Concern

  included do
    rails_admin do
      edit do
        field :title
        field :content, :ck_editor
        field :image
        field :link
      end
    end
  end
end
