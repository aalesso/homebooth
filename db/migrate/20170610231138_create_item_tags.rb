class CreateItemTags < ActiveRecord::Migration[5.0]
  def change
    create_table :item_tags do |t|
      t.integer :tags_id
      t.integer :item_id

      t.timestamps

    end
  end
end
