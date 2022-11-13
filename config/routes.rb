Rails.application.routes.draw do
  root to: 'users#index'

  resources :users, only: [:index, :show, :new, :create, :destroy] do
    resources :fits, only: [:new, :create]
  end
  resources :fits, only: [:destroy]
end
