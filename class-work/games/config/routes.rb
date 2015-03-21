Games::Application.routes.draw do


  root 'games#index'
  
  resources 'games', only: [:index]
  resources "secret_numbers", only: [:new, :show]
  resources "rock_papers", only: [:new, :show]
  resources "scrambles", only: [:new, :show]
end
