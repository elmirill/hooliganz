class CreateTrainingPictures < ActiveRecord::Migration
  def change
    create_table :training_pictures do |t|
      t.string :caption
      t.string :alt
      t.belongs_to :training, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
