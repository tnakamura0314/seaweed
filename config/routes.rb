Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"

  resources :foods, only: [:index, :new, :create, :edit ,:update, :destroy]
  resources :food_consumptions, only: [:index]
  resources :food_losses, only: [:index]
end
