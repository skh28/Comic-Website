Rails.application.routes.draw do
  resources:schema
  resources:issues
  resources:users
  
  resources:issues do
    collection do
      get :search
    end
  
  #resources:issues do
   # member do
    #  get 'preview'
    #end
  
  end
  
  get 'issues/new'

  get 'users/new'

  get 'sessions/new'

  get 'static_pages/comiclist'
  get 'static_pages/home'
  #get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/issues'

  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
