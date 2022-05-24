Rails.application.routes.draw do
 
  # get 'pages/home'
  # get 'entities/index'
  # get 'entities/show'
  root "splashs#index"
  resources :pages
  resources :entities
  resources :groups
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

devise_scope :user do
    authenticated :user do
      root to: 'groups#index', as: :authenticated_root
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
    unauthenticated :user do
      root to: 'splashs#home', as: :unauthenticated_root
    end
  end



  # Defines the root path route ("/")
  
end
