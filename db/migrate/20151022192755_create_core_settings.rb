class CreateCoreSettings < ActiveRecord::Migration
  def change
    create_table :core_settings do |t|
      t.string :main_phone
      t.string :main_email
      t.string :address
      t.string :site_description
      t.string :vk_link
      t.string :instagram_link
      t.string :youtube_link

      t.timestamps null: false
    end
  end
end
