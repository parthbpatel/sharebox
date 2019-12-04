Rails.application.routes.draw do

  resources :assets
  devise_for :users
  root to: "home#index"
end
