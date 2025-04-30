class Item < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :storage_location
  belongs_to :company
end
