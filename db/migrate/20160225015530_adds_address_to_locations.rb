class AddsAddressToLocations < ActiveRecord::Migration
  def change
  add_column :locations, :address, :string 
  rename_column :locations, :long, :longitutde 
  rename_column :locations, :lat, :latitude 
  end
end
