Rails.application.routes.draw do
  resources :transactions
 
  # get 'pages/home'
  # get 'entities/index'
  # get 'entities/show'
  
  resources :pages
  # resources :entities
  resources :categories
  devise_for :users
  # , :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    authenticated :user do
      root to: 'pages#index', as: :authenticated_root
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
    unauthenticated :user do
      root to: 'splashs#index', as: :unauthenticated_root
    end
  end
  
  root "splashs#index"


  # Defines the root path route ("/")
  
end
