Rails.application.routes.draw do
  root to: 'filenotes#index'
  devise_for :users
  resources :filenotes, only: [:new, :create, :destroy]
  resources :works, only: [:index, :new, :create, :edit, :update, :destroy]
end
