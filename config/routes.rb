Rails.application.routes.draw do
  get 'createhistory' => 'histories#new'

  get 'createroom'  => 'rooms#new'
  get 'createuser'  => 'users#new'
  get 'roomshow'      => 'rooms#show'
  get 'admins'      => 'users#adminlist'
  







  get 'sessions/new'

  root             'static_pages#home'
  
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :rooms
  resources :histories
end