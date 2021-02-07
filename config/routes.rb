Rails.application.routes.draw do  
  resources :recipe_ingredients
  resources :comments, only: [:destroy, :new, :update]
  resources :users do
    resources :recipes
  end
  resources :instructions
  resources :ingredients
  root to: 'static#home'
  
  resources :recipes do
    resources :comments
  end
    
  resources :categories do
      resources :recipes
  end


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
