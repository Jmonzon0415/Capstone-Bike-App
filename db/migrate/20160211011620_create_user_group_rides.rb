class CreateUserGroupRides < ActiveRecord::Migration
  def change
    create_table :user_group_rides do |t|

      t.timestamps null: false
    end
  end
end
