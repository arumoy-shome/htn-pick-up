Rails.application.routes.draw do
  devise_for :users

  #static_pages
  root to: "static_pages#main", as: 'main'
  #users
  resources :users, only: [:show]
end
