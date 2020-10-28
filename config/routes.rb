Rails.application.routes.draw do
  get 'works/index'
  devise_for :users
  root to: 'filenotes#index'
  resources :filenotes, only: [:new, :create, :destroy]
  resources :works, only: [:index, :new, :create]
end
