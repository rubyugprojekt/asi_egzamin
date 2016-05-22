Rails.application.routes.draw do
  devise_for :users
  resources :serials do
    resources :reviews
  end
  root 'serials#index'
end
