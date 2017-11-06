json.extract! list_product, :id, :list_id, :product_id, :quantity, :availability, :created_at, :updated_at
json.url list_product_url(list_product, format: :json)
