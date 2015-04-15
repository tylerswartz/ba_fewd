Rails.application.routes.draw do
  root 'app_homes#index'

  resources :app_homes, only: [:index]
  resources :museums, except: [:destory]
  resources :artists, except: [:destory]
  resources :paintings, except: [:destory]
end
