class GroupRidesController < ApplicationController
  
  def index
    @gr = GroupRide.all  
    end

  
  def create 
    GroupRide.create ({ 
      name: params[:name], 
      ride_type: params[:ride_type], 
      description: params[:description],
      length: params[:length],
      time: params[:time][:started_at],
      date: params[:date],
      address: params[:address],
      creator_id: current_user.id,
       })
    redirect_to '/group_rides'
  end 


  def new 
    @date = params[:date]
  end 



  def user_show_page
    @rides = GroupRide.where(creator_id: current_user.id)
  end 





  def show
    @sr = GroupRide.find_by(id: params[:id])  
    @users = @sr.users 
  end


  def edit
     @ride = GroupRide.find_by(id: params[:id]) 
   end 


  def update
    @ride = GroupRide.find_by(id: params[:id])
    
    @ride.update ({ 
      name: params[:name], 
      ride_type: params[:ride_type], 
      description: params[:description],
      address: params[:address],
      length: params[:length],
      time: params[:time],
      date: params[:date],
      creator_id: current_user.id,
       })
    redirect_to "/group_rides/#{@ride.id}"
  end 


  def destroy 
    @ride = GroupRide.find_by(id: params[:id])
    @ride.destroy
  redirect_to '/group_rides'
  end





end
