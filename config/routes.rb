Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"

  resources :foods, only: [:index, :new, :create, :edit ,:update, :destroy]
  resources :food_consumptions, only: [:index]
  resources :food_losses, only: [:index]
  resources :posts, only: [:index, :create]

  get 'posts/:id', to: 'posts#checked'
end
