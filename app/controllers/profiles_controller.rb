class ProfilesController < ApplicationController

def index
end

def show
  @profile = User.find_by(id: params[:id] )
  @upload = Upload.find_by(user_id: @profile.id)
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


