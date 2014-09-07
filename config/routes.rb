PhotoGallery::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'static_pages#home'

  resources :galleries, only: [:show]
  resources :posts, only: [:show]
  resources :notes, only: [:index]

  namespace :api, defaults: { format: 'json' } do
    resources :galleries, only: [] do
      resources :images, only: [:show], controller: 'galleries/images'
    end
  end
end
