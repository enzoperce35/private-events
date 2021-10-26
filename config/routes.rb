Rails.application.routes.draw do
  root 'events#index'
  
  devise_for :users

  get 'users/show', to: 'users#show'
  post 'event_attendances/add_attendee/:id', to: 'event_attendances#add_attendee', as: 'attendee'
  
  resources :events, only: [:new, :create, :show]
end
