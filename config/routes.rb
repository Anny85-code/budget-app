Rails.application.routes.draw do
  get 'pages/home'
  get 'entities/index'
  get 'entities/show'
  get 'groups/index'
  get 'groups/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
