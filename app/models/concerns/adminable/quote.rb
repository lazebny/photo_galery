module Adminable::Quote
  extend ActiveSupport::Concern

  included do
    rails_admin do
      list do
        field :author
        field :content
      end
  
      edit do
        field :author
        field :content, :ck_editor
      end
    end
  end
end
