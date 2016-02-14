class ChangeCreatorIdInGroupRides < ActiveRecord::Migration
  def change
  rename_column :group_rides, :creator_id, :user_id

  end
end
