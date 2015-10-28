Rails.application.routes.draw do
  devise_for :users
  resources :stats
  root 'stats#index'
end
