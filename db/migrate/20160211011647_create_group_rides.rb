class CreateGroupRides < ActiveRecord::Migration
  def change
    create_table :group_rides do |t|

      t.timestamps null: false
    end
  end
end
