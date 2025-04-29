class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :user_id, null: false
      t.string :name, null: false
      t.string :category
      t.string :category_id
      t.integer :quantity
      t.date :purchase_date
      t.decimal :total_value
      t.decimal :price
      t.string :unit
      t.string :location
      t.string :storage_location_id
      t.string :company
      t.date :expiry_date
      t.string :barcode
      t.string :image_url

      t.timestamps                         
    end

    add_index :items, :user_id
    add_index :items, :category_id
    add_index :items, :storage_location_id
    add_index :items, :name
  end
end