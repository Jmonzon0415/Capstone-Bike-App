class LocationsController < ApplicationController
 
  def new
  end 
  
  def create 
   @location = Location.create(address: params[:address], longitude: params[:longitude], latitude: params[:latitude])
    redirect_to "location/#{@location.id}"
  end

  def show 
    @location = Location.find_by(id: params[:id])

  end



end
