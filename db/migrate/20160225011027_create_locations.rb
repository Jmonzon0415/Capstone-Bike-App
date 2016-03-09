class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :long
      t.float :lat

      t.timestamps null: false
    end
  end
end
