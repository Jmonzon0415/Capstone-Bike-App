class AddAttributesToUserGroupRides < ActiveRecord::Migration
  def change
  add_column :user_group_rides, :user_id, :integer 
  add_column :user_group_rides, :group_ride_id, :integer
  end
end
