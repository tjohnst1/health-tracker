Rails.application.routes.draw do
  devise_for :users
  resources :tracking_periods do
    resources :foods, except: [:index, :show]
  end
  root 'tracking_periods#index'
  resources :home, only: [:index]
end
