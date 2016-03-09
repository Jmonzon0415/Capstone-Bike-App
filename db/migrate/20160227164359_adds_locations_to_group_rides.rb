class AddsLocationsToGroupRides < ActiveRecord::Migration
  def change
  add_column :group_rides, :address, :string 
  add_column :group_rides, :latitude, :float  
  add_column :group_rides, :longitude, :float
  end
end
