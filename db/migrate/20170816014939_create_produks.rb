class CreateProduks < ActiveRecord::Migration[5.1]
  def change
    create_table :produks do |t|
      t.string :judul
      t.text :description
      t.string :image_url
      t.decimal :price
      t.belongs_to :kategori, foreign_key: true

      t.timestamps
    end
  end
end
