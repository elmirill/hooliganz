class AddAltsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :alt, :string
  end
end
