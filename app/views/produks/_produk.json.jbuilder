json.extract! produk, :id, :judul, :description, :image_url, :price, :kategori_id, :created_at, :updated_at
json.url produk_url(produk, format: :json)
