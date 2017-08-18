class LineItem < ApplicationRecord
  belongs_to :produk
  belongs_to :cart
  def total_price
    produk.price * quantity
  end
  def total_quantity
    quantity
  end
end
