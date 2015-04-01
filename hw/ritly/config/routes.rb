Rails.application.routes.draw do
  root 'urls#index'
  resources :urls, only: [:index, :new, :show, :create]

end
