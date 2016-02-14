class AddNameToGroupRides < ActiveRecord::Migration
  def change
  add_column :group_rides, :name, :string

  end
end
