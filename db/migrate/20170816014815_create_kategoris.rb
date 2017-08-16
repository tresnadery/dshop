class CreateKategoris < ActiveRecord::Migration[5.1]
  def change
    create_table :kategoris do |t|
      t.string :kategori
      t.timestamps
    end
  end
end
