class UserGroupRidesController < ApplicationController
  
  def create 
    UserGroupRide.create({group_ride_id: params[:group_ride_id], user_id: current_user.id })
    redirect_to "/group_rides"
  end

  def destroy
    @joined_ride = UserGroupRide.find_by(id: params[:id])
    @joined_ride.destroy
    redirect_to "/group_rides"
  end 

end
