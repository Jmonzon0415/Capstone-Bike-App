class AddAttributesToGroupRides < ActiveRecord::Migration
  def change
  add_column :group_rides, :time, :time
  add_column :group_rides, :date, :date 
  add_column :group_rides, :description, :text
  add_column :group_rides, :location, :string 
  add_column :group_rides, :ride_type, :string 
  add_column :group_rides, :length, :integer
  add_column :group_rides, :creator_id, :integer
  

  end
end
