class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  def add_produk(produk)
    current_item = line_items.where('produk_id = ?', produk.id).first
    if current_item
      current_item.quantity +=1
    else
      current_item = line_items.build(produk_id: produk.id)
    end
    current_item
  end
  def total_price
    line_items.to_a.sum{|item|item.total_price}
  end
end
