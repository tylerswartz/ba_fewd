Rails.application.routes.draw do
  root 'musuems#index'

  resources :musuems, except: [:destory]
  resources :artists, except: [:destory]
  resources :paintings, except: [:destory]
end
