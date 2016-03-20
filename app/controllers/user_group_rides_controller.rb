class UserGroupRidesController < ApplicationController
  
  


  def create 
    UserGroupRide.create({group_ride_id: params[:group_ride_id], user_id: current_user.id, status: "Joined"  })
    redirect_to "/user_group_rides"
  end

  
  def index       
      @joined_ride = UserGroupRide.where( status: "Joined", user_id: current_user.id )
  end 

  def show      
  end 




  def destroy
    @joined_ride = UserGroupRide.find_by(status: "Joined", user_id: current_user.id)
    @joined_ride.destroy
    redirect_to "/user_group_rides"
  end

   

end
