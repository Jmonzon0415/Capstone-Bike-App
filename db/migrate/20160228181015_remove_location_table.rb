class RemoveLocationTable < ActiveRecord::Migration
  def change
  remove_column :group_rides, :location_id, :integer  
  end
end
