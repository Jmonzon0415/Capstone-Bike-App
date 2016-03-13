class MakeUploads < ActiveRecord::Migration
  def change
  add_column :uploads, :name, :string
  end
end
