json.extract! product, :id, :name, :category, :price, :brand, :created_at, :updated_at
json.url product_url(product, format: :json)
