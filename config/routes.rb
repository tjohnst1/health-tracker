Rails.application.routes.draw do
  devise_for :users
  resources :tracking_periods do
    resources :foods, only: [:new, :create, :destroy]
  end
  root 'tracking_periods#index'
  resources :home, only: [:index]

end
