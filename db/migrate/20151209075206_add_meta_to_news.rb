class AddMetaToNews < ActiveRecord::Migration
  def change
    add_column :news, :thumb_alt, :string
    add_column :news, :thumb_title, :string
  end
end
