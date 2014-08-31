PhotoGalery::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'

  resources :galeries, only: [:show]

  # test
end
