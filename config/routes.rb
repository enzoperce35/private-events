Rails.application.routes.draw do
  root 'events#index'
  
  devise_for :users

  get 'users/show', to: 'users#show'
  
  resources :events, only: [:new, :create]
end
