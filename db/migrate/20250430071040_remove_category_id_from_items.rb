class RemoveCategoryIdFromItems < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :items, :categories, column: :category_id if foreign_key_exists?(:items, :categories)
    remove_reference :items, :category, index: true
  end
end
