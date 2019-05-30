Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root to: 'pages#home'

  resources :skills
  
  resources :portfolios

  resources :blogs

  resources :topics

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
