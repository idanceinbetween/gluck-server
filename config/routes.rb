Rails.application.routes.draw do
  resources :tags
  resources :exchanges
  # resources :listings
  resources :user_templates
  resources :locations
  resources :gifts
  resources :communications
  resources :users
  
  post '/signup', to: 'users#signup'
  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/action', to: 'users#inventory'
end
