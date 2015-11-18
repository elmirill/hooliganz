class AddDisplayOrderToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :display_order, :integer
  end
end
