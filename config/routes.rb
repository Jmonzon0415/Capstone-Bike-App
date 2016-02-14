Rails.application.routes.draw do
  devise_for :users
  root 'profiles#index'

  get '/index' => 'profiles#index'
  get '/group_rides' => 'group_rides#index'
  get '/group_rides/new' => 'group_rides#new' 
  post '/group_rides' => 'group_rides#create'
  get 'group_rides/:id' => 'group_rides#show'
  get 'group_rides/:id/edit' => 'group_rides#edit'
  patch 'group_rides/:id' => 'group_rides#update'
  delete 'group_rides/:id' => 'group_rides#destroy' 
 

end
