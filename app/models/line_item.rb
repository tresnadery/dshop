class LineItem < ApplicationRecord
  belongs_to :produk
  belongs_to :cart
end
