Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  # get '/contact', to: 'contact#new'
  root to: 'pages#home'

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:create, :destroy]
  
  resources :skills
  
  resources :portfolios

  # resources :blogs

  resources :topics

  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
