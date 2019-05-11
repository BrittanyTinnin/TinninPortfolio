Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show'
  root to: 'pages#home'
  
  resources :portfolios

  resources :blogs

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
