Rails.application.routes.draw do
  get 'contact_form/new'
  get 'contact_form/create'
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

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
