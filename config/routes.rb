PhotoGallery::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'static_pages#home'

  resources :galleries, only: [:show]
  resources :posts, only: [:show]
  resources :notes, only: [:index]
end
