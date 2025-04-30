class AddForeignKeysToItems < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :items, :categories, column: :category_id if table_exists?(:categories)
    add_foreign_key :items, :storage_locations, column: :storage_location_id if table_exists?(:storage_locations)
  end
end
