Rails.application.routes.draw do
  resources :cats, except: [:destroy]
  resources :shoes, only: [:index, :show]
  resources :foods, only: [:show, :edit, :update]
  resources :students, only: [:index]
  resources :vehicles, only: [:index] do
  	collection do #url would be vehicles/search
  		get :search
  	end
  	member do
  		get :preview #url would be vehicles/[:memberid]/preview
  	end
  end
  resources :fruits
end

#not common to use the custom routes.