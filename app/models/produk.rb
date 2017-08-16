class Produk < ApplicationRecord
  belongs_to :kategori
  mount_uploader :image_url, ImageUploader
  validates :judul,:description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :judul, uniqueness: true
end
