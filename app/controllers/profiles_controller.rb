class ProfilesController < ApplicationController

def index
end

def show
  @profile = User.find_by(id: params[:id] )
  @upload = Upload.find_by(user_id: @profile.id)
end

def joined_rides_show
  @profile = User.find_by(id: params[:id])
  @joined_rides = UserGroupRide.where( status: "Joined", user_id: @profile.id )

end 

def created_rides_show
  @profile = User.find_by(id: params[:id])
  @created_rides = GroupRide.where( creator_id: @profile.id )

end 



def edit
 @profile = User.find_by(id: current_user.id)
end

def new
    
  end

def update
@profile = User.find_by(id: current_user.id)


@profile.update ({ 
  first_name: params[:first_name],
  last_name: params[:last_name], 
  bio: params[:bio],
  avatar: params[:avatar]
  
  })


redirect_to "/profiles/#{@profile.id}"
end

end


