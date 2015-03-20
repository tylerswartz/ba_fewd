Games::Application.routes.draw do
  get 'scrambles/new'

  get 'scrambles/show'

  root 'games#index'
  
  resources 'games', only: [:index]
  resources "secret_numbers", only: [:new, :show]
  resources "rock_papers", only: [:new, :show]
end
