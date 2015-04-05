Rails.application.routes.draw do
  devise_for :users
  root 'stories#index'

  resources :stories, only: [:index, :new, :show, :create]


end