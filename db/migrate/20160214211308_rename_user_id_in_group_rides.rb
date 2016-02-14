class RenameUserIdInGroupRides < ActiveRecord::Migration
  def change
  rename_column :group_rides, :user_id, :creator_id
  end
end
