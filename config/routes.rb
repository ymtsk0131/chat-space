Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'groups#index'
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
