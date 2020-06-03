Rails.application.routes.draw do
  devise_for :users
  get 'pictures/new'
  get 'pictures/index'
  post 'pictures', to: 'pictures#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:edit, :update]
end
