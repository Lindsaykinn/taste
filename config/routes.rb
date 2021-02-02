Rails.application.routes.draw do  
  resources :comments, only: [:destroy]
  resources :instructions
  resources :ingredients
  root to: 'static#home'
  
  resources :recipes do
    resources :comments, except: [:destroy]
    post '/comments', to: 'comments#create'
  end
    
  resources :categories do
      resources :recipes
  end

  
  get '/users/:id', to: 'users#show', :as => 'myrecipes'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'destroy_user_session'
  
  
  # match '/auth/:google_oauth2/callback' => 'sessions#google', via: [:get,:post]
  # match '/auth/:google_oauth2/callback' => 'sessions#omniauth', via: [:get, :post]

  # get 'auth/google_oauth2/callback', to: 'sessions#omniauth'
  match '/auth/:google_oauth2/callback' => 'sessions#omniauth', via: [:get, :post]

  
end
