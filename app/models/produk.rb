class Produk < ApplicationRecord
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  belongs_to :kategori
  mount_uploader :image_url, ImageUploader
  validates :judul,:description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :judul, uniqueness: true

  private
  def unsure_not_refererenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items Present')
      throw :abort
    end
  end
  def self.search(search)
    if search
      self.where("judul like ?","%#{search}%").all
    else
      self.all
    end
  end
end
