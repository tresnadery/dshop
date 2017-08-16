class Kategori < ApplicationRecord
  has_many :produk
  def kategori_with_initial
    "#{kategori}"
  end
end
