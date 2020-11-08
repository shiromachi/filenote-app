Rails.application.routes.draw do
  devise_for :users
  root to: 'filenotes#index'
  resources :filenotes, only: [:new, :create, :destroy]
  resources :works, only: [:index, :new, :create, :edit, :update, :destroy]
end
