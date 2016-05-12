Rails.application.routes.draw do
  devise_for :users
  resources :serials
  root 'serials#index'
end
