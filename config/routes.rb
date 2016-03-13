Rails.application.routes.draw do
   

  devise_for :users
  root 'profiles#index'
  resources :uploads

  get '/' => 'profiles#index'
  get '/profiles/:id' => 'profiles#show'
  get '/profiles/:id/edit' => 'profiles#edit'
  patch '/profiles/:id' => 'profiles#update'

  
  get '/uploads' => 'uploads#index'
  get '/uploads/new' => 'uploads#new'
  post '/uploads' => 'uploads#create'
  get '/uploads/:id' => 'uploads#show'
  delete '/uploads/:id' => 'uploads#destroy'

  
  get '/group_rides' => 'group_rides#index'
  get '/group_rides/new' => 'group_rides#new' 
  post '/group_rides' => 'group_rides#create'
  get 'group_rides/:id' => 'group_rides#show'
  get 'group_rides/:id/edit' => 'group_rides#edit'
  patch 'group_rides/:id' => 'group_rides#update'
  delete 'group_rides/:id' => 'group_rides#destroy' 

  get '/users_ride' => 'group_rides#user_show_page'
  
  post '/user_group_rides' => 'user_group_rides#create'
  get '/user_group_rides' => 'user_group_rides#index'
  delete '/user_group_rides/:id' => 'user_group_rides#destroy'

  get '/locations/new' => 'locations#new'
  post '/locations' => 'locations#create'
  get 'locations/:id' => 'location#show'


end
