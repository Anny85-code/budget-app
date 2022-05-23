Rails.application.routes.draw do
  get 'pages/home'
  get 'entities/index'
  get 'entities/show'
  get 'groups/index'
  get 'groups/show'
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
