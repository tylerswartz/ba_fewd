Rails.application.routes.draw do
  root 'urls#new'
  resources :urls, only: [:index, :new, :show, :create]
end
