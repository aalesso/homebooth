class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :description
      t.string :newlink
      t.string :location
      t.float :suggested_price
      t.integer :user_id

      t.timestamps

    end
  end
end
