class RemoveLocationFromGroupRides < ActiveRecord::Migration
  def change
  remove_column :group_rides, :location, :string
  end
end
