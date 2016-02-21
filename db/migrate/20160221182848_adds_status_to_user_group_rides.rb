class AddsStatusToUserGroupRides < ActiveRecord::Migration
  def change
    add_column :user_group_rides, :status, :string
  end
end
