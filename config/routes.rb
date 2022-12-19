Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:show, :new, :create, :destroy, :edit, :update]do
  resources :comments, only: :create
  resources :users, only: :show
end
end