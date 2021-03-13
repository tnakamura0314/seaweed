Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"

  resources :foods, only: [:index, :new, :create]
end
