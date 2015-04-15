Rails.application.routes.draw do
  root 'museums#index'

  resources :museums, except: [:destory]
  resources :artists, except: [:destory]
  resources :paintings, except: [:destory]
end
