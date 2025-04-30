class RemoveRedundantColumnsFromItems < ActiveRecord::Migration[8.0]
  def change
    remove_column :items, :category, :string
    remove_column :items, :location, :string
    remove_column :items, :company, :string
  end
end
