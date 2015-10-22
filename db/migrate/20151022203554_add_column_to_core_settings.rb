class AddColumnToCoreSettings < ActiveRecord::Migration
  def change
    add_column :core_settings, :vk_personal_link, :string
  end
end
