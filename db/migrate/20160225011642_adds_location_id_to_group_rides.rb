class AddsLocationIdToGroupRides < ActiveRecord::Migration
  def change
  add_column :group_rides, :location_id, :integer
  end
end
