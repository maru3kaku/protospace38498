Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  #prototypeのネスト
  resources :prototypes, only: [:show, :new, :create, :destroy, :edit, :update]do
  resources :comments, only: :create
  end
  #prototypeのネスト
  
resources :users, only: :show
end