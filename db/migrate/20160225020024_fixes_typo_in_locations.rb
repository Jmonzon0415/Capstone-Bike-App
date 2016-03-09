class FixesTypoInLocations < ActiveRecord::Migration
  def change
  rename_column :locations, :longitutde, :longitude 
  end
end
