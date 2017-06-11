class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.text :description
      t.boolean :cover
      t.string :image
      t.integer :item_id

      t.timestamps

    end
  end
end
