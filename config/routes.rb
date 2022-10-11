Rails.application.routes.draw do
  
  resources :hero_powers, only: [:index, :show, :create, :destroy]
  resources :powers, only: [:index, :show, :update]
  resources :heros, only: [:index, :show]
end
