Rails.application.routes.draw do
  get 'pictures/new'
  get 'pictures/index'
  post 'pictures', to: 'pictures#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
