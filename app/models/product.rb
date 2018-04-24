class Product < ApplicationRecord
  has_many :line_items

  default_scope { where(purchaseable: true) }
end
