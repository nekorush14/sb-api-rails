class CreateStorageLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :storage_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
