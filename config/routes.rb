Rails.application.routes.draw do
  resources :recipes
  devise_for :users, :controllers => {registrations:'registrations'}

  root to: 'static#home'

  
end
