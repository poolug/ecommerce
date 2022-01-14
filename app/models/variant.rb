class Variant < ApplicationRecord
  has_many :order_items
  has_many :orders, through: :order_items
  
  belongs_to :product
  belongs_to :color
  belongs_to :size

  def variant_on_stock?
    if self.stock > 0
      return true
    end
    return false
  end

  def visible_on_catalog?
    self.last
  end

end
