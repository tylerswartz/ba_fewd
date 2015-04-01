Rails.application.routes.draw do
  root 'urls#new'
  resources :urls, only: [:index, :new, :show, :create]
	
	get '/:code', to: 'urls#redirectors'
	# get '/:code/preview', to: 'urls#preview'

end
