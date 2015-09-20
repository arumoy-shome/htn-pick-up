Rails.application.routes.draw do
  #devise
  devise_for :users

  #static_pages
  root to: "static_pages#main", as: 'main'

  #users
  resources :users, only: [:show]

  #events
  resources :events
  get '/events/:id/join', to: 'events#join', as: 'join_event'
end
