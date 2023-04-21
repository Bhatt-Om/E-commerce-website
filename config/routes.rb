Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'products/edit'
  get 'products/create'
  get 'products/update'
  get 'products/destroy'
  root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
