Rails.application.routes.draw do
  devise_for :users

  resources :photos, only: [:index, :create, :new]
  resources :users, only: [:show]
  resources :followings, only: [:create, :destroy]

  get 'mis_fotos', to: "photos#my"

  root 'welcome#index'
end
