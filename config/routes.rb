Rails.application.routes.draw do
 
  devise_for :users
  root 'users#index'

  get '/index' => 'users#index'
  
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


end
