Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'pictures/new'
  get 'pictures/index'
  post 'pictures', to: 'pictures#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
