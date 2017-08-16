class CombineItemsInCart < ActiveRecord::Migration[5.1]
  def change
  end
  def up
    Cart.all.each do |cart|
      sums = cart.line_items.group(:produk_id).sum(:quantity)

      sums.each do |produk_id, quantity|
        if quantity > 1
          carr.line_items.where(produk_id: produk_id).delete_all

          item = cart.line_items.build(produk_id: produk_id)
          item.quantity = quantity
          item.save!
      end
    end
  end
end

  def down
    LineItem.where("quantity>1").each do |line_item|
      line_item.quantity.times do
        LineItem.create(
        cart_id: line_item.cart_id,
        produk_id: line_item.produk_id,
        quantity: 1
        )
      end
      line_item.destroy
    end
  end

end
