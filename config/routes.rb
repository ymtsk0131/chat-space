Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  resources :users, only: [:index]

  namespace :api do
    resources :groups, only: [:index, :show] do
      resources :messages, only: [:index, :create]
    end
  end
end
