class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validate :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :product_present
  validate :order_present

  before_save :update_total

  def unit_price
    if persisted?
      self[:unit_price]
    else 
      product.unit_price
    end
  end

  def total_price
    unit_price * quantity
  end

private

  def product_present
    if product.nil?
      errors.add(:product, " is not valid or is not purchaseable.")  
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, " is not a valid order.")
    end
  end

  def update_total
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
